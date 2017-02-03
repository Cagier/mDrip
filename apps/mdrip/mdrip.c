/** DEXDRIP Translator: 
  == Description ==
  The app uses the radio_queue libray to receive packets.  It does not
  transmit any packets.

  The output from this app normally takes the following format:
  RAWREADING TRANSMITTERBATTERY WIXELBATTERY
  
  The green LED indicates that data was just sent

  PLEASE BE SURE TO SET YOUR TRANSMITTER ID BELOW

  == Parameters ==
radio_channel: See description in radio_link.h.
*/

/** Dependencies **************************************************************/
/*#define DEBUG*/
#include <cc2511_map.h>
#include <board.h>
#include <random.h>
#include <time.h>
#include <usb.h>
#include <usb_com.h>
#include <radio_registers.h>
#include <radio_queue.h>
#include <gpio.h>
#include <uart1.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <adc.h>
#include <aes.h>


//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                  //
//                           SET THESE VARIABLES TO MEET YOUR NEEDS                                 //
//                                   1 = TRUE       0 = FALSE                                       //
//                                                                                                  //
  static XDATA const char transmitter_id[] = "6F5YP";                                               


//                                                                                                  //
  static volatile BIT only_listen_for_my_transmitter = 1;                                           //
// 1 is recommended                                                                                 //
//                                                                                                  //
  static volatile BIT status_lights = 1;                                                            //
// if status_lights = 1; the yellow light flashes while actively scanning                           //
// if a light is flashing for more than 10 minutes straight, it may not be picking up your dex      //
//                                                                                                  //
  static volatile BIT allow_alternate_usb_protocol = 0;
// if set to 1 and plugged in to USB then protocol output is suitable for dexterity and similar     //
//                                                                                                  //
//..................................................................................................//
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                  //
//                 Advanced Options, dont change unless you know what you are doing                 //
//                                                                                                  //
//                                                                                                  //
  static volatile uint8 wake_earlier_for_next_miss = 20;                                            //
// if a packet is missed, wake this many seconds earlier to try and get the next one                //
// shorter means better bettery life but more likely to miss multiple packets in a row              //
//                                                                                                  //
  static volatile uint8 misses_until_failure = 1;                                                   //
// after how many missed packets should we just start a nonstop scan?                               //
// a high value is better for conserving batter life if you go out of wixel range a lot             //
// but it could also mean missing packets for MUCH longer periods of time                           //
// a value of zero is best if you dont care at all about battery life                               //
//                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////
  static volatile BIT enable_wixfone = 1;	
// if set to 1 then this is different hardware that uses a 2G Fona instead of bluetooth module		//
//																									//
  static volatile BIT encrypt_output = 1;
// if set to 1 then encrypt using AES to send over public networks (requires decryption at far end) //
//																									//
  static CODE const char apnString[] = "internet";                                                 //
// You only need to change this if using the fona - set your network provider's APN here            //
// this is usually unique for each mobile phone provider and you will probably need to google it    //
// In Ireland the provider 3 (or O2) use "internet" and Vodafone uses "live.vodafone.com"			//
//                                                                                                  //
  static XDATA const char dexie_host_address[] = "REPLACEME.DuckDNS.org,17611";
// You only need to change this if using the fona - set your Dexie server details here				//
// This is the address and the port number of the Dexie server which will receive the WixFone data  //
// It may be any address and port that you like but I use a dynamic DNS and recommend this port no. //

  static CODE const char wixFone_ID[] = "YourID";													//
// Again, you only need to change this if using the fona.											//
// Just identifies this WixFone.  Not really required but handy for seeing who is logging in.		//
// Might use this for mapping Mongo connection strings or TXIDs at some later stage					//  
//                                                                                                  //
//..................................................................................................//
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////

static XDATA volatile int8 start_channel = 0;
//uint32 XDATA asciiToDexcomSrc(char *addr);
uint32 XDATA getSrcValue(char srcVal);
//volatile uint32 dex_tx_id;
#define NUM_CHANNELS        (4)
static int8 fOffset[NUM_CHANNELS] = {0xCE,0xD5,0xE6,0xE5};
static XDATA int8 defaultfOffset[NUM_CHANNELS] = {0xCE,0xD5,0xE6,0xE5};
static uint8 nChannels[NUM_CHANNELS] = { 0, 100, 199, 209 };
static uint32 waitTimes[NUM_CHANNELS] = { 13500, 500, 500, 500 };
//Now lets try to crank down the channel 1 wait time, if we can 5000 works but it wont catch channel 4 ever
static uint32 delayedWaitTimes[NUM_CHANNELS] = { 0, 700, 700, 700 };
static uint32 catch_offsets[NUM_CHANNELS] = { 0, 0, 0, 0 };
static uint8 last_catch_channel = 0;
BIT needsTimingCalibration = 1;
BIT usbEnabled = 1;
static uint8 save_IEN0;
static uint8 save_IEN1;
static uint8 save_IEN2;
unsigned char XDATA PM2_BUF[7] = {0x06,0x06,0x06,0x06,0x06,0x06,0x04};
unsigned char XDATA dmaDesc[8] = {0x00,0x00,0xDF,0xBE,0x00,0x07,0x20,0x42};
volatile uint8 sequential_missed_packets = 0;


uint8 intMaxStrLen = 80;
XDATA uint8 AT_TIMEOUT = 20;
static XDATA uint32 defaultATWait = 3000; // Default time for AT command to respond - crank down to get reduce overall time to send out data

//   ************* FOR AES ********************************************************

// static XDATA uint8_t key[] = { 0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c };
	static XDATA uint8_t key[] = { 'M','y', 'm', 'D', 'r', '|', 'P', '&', 'A', 'E', 'S', 'r', '@', '[', 'K', '!' };
//  Place your 16 Character ASCII key above!  (And also in your dexie.java)


XDATA typedef struct _Dexcom_packet {
    uint8   len;
    uint32  dest_addr;
    uint32  src_addr;
    uint8   port;
    uint8   device_info;
    uint8   txId;
    uint16  raw;
    uint16  filtered;
    uint8   battery;
    uint8   unknown;
    uint8   checksum;
    int8    RSSI;
    uint8   LQI;
} Dexcom_packet;

XDATA typedef struct _GSMlocInfo {
	char LatLong[25];
	uint8_t iv[16];
	uint8 returncode;
} GSMlocInfo;

void sleepInit(void) {
   WORIRQ  |= (1<<4);
}

ISR(ST, 1) {
    IRCON &= 0x7F;
    WORIRQ &= 0xFE;
    SLEEP &= 0xFC;
}

void switchToRCOSC(void) {
    SLEEP &= ~0x04;
    while ( ! (SLEEP & 0x20) );
    CLKCON = (CLKCON & ~0x07) | 0x40 | 0x01;
    while ( !(CLKCON & 0x40) );
    SLEEP |= 0x04;
}

void uartEnable() {
//    U1UCR |= 0x40; //CTS/RTS ON
    U1UCR &= ~0x40; //CTS/RTS Off
	U1CSR |= 0x40;
    delayMs(100);
}

void uartDisable() {
    delayMs(100);
    U1UCR &= ~0x40; //CTS/RTS Off
    U1CSR &= ~0x40; // Receiver disable
}

void blink_yellow_led() {
    if(status_lights) {
        LED_YELLOW(((getMs()/250) % 2));//Blink quarter seconds
    }
}

void blink_red_led() {
    if(status_lights) {
        LED_RED(((getMs()/500) % 2));//Blink half seconds
    }
}

uint8 getPacketPassedChecksum(Dexcom_packet* p) {
    return ((p->LQI & 0x80)==0x80) ? 1:0;
}

uint8 bit_reverse_byte(uint8 in) {
    uint8 XDATA bRet = 0;
    if(in & 0x01)
        bRet |= 0x80;
    if(in & 0x02)
        bRet |= 0x40;
    if(in & 0x04)
        bRet |= 0x20;
    if(in & 0x08)
        bRet |= 0x10;
    if(in & 0x10)
        bRet |= 0x08;
    if(in & 0x20)
        bRet |= 0x04;
    if(in & 0x40)
        bRet |= 0x02;
    if(in & 0x80)
        bRet |= 0x01;
    return bRet;
}

uint8 min8(uint8 a, uint8 b) {
    if(a < b) return a;
    return b;
}

void bit_reverse_bytes(uint8* buf, uint8 nLen) {
    uint8 XDATA i = 0;
    for(; i < nLen; i++) {
        buf[i] = bit_reverse_byte(buf[i]);
    }
}

uint32 dex_num_decoder(uint16 usShortFloat) {
    uint16 XDATA usReversed = usShortFloat;
    uint8 XDATA usExponent = 0;
    uint32 XDATA usMantissa = 0;
    bit_reverse_bytes((uint8*)&usReversed, 2);
    usExponent = ((usReversed & 0xE000) >> 13);
    usMantissa = (usReversed & 0x1FFF);
    return usMantissa << usExponent;
}

char XDATA SrcNameTable[32] = { '0', '1', '2', '3', '4', '5', '6', '7',
                                '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
                                'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P',
                                'Q', 'R', 'S', 'T', 'U', 'W', 'X', 'Y' };

void dexcom_src_to_ascii(XDATA uint32 src, XDATA char addr[6]) {
    addr[0] = SrcNameTable[(src >> 20) & 0x1F];
    addr[1] = SrcNameTable[(src >> 15) & 0x1F];
    addr[2] = SrcNameTable[(src >> 10) & 0x1F];
    addr[3] = SrcNameTable[(src >> 5) & 0x1F];
    addr[4] = SrcNameTable[(src >> 0) & 0x1F];
    addr[5] = 0;
}

void clearRxErrors() {	
    if (uart1RxBufferFullOccurred)
    {   uart1RxBufferFullOccurred = 0;							// Clear Buffer Full Errors
		LED_RED(1);												// Error Indicator
	}
	if (uart1RxParityErrorOccurred)
    {   uart1RxParityErrorOccurred = 0;							// Clear Parity Errors
		LED_RED(1);												// Error Indicator
	}
    if (uart1RxFramingErrorOccurred)
    {   uart1RxFramingErrorOccurred = 0;
		LED_RED(1);												// Put the red LED on to show there was an error
		uartDisable();
 //		U1CSR &= ~0x40;										    // U1CSR.RE = 0.  Disables reception of bytes on the UART.
		delayMs(250);											// Crude and will slow us down but we can take the small hit
//      U1CSR |= 0x40;									        // The line has been high for long enough, so re-enable the receiver.
//	It would be nice to check the uart status here before we switch it on again
		uartEnable();
    }
		LED_RED(0);												// Error Indicator
}

void doServices() {
    boardService();
    if(usbPowerPresent()) {
        usbComService();
	    usbShowStatusWithGreenLed();
//		LED_RED(usbComRxControlSignals() & ACM_CONTROL_LINE_DTR);
//		clearRxErrors();		//	Tentatively added this as otherwise might freeze waiting for an RX or TX buffer but may unintentionally enable UART
    }
}

void initUart1() {
    uart1Init();
    uart1SetBaudRate(9600);
}

uint32 getSrcValue(XDATA char srcVal) {
    XDATA uint8 i = 0;
    for(i = 0; i < 32; i++) {
        if (SrcNameTable[i]==srcVal) break;
    }
    return i & 0xFF;
}

XDATA char * getFonaString() {					// Read the uart input buffer once character at a time
   XDATA char uartCharacters[80];
   XDATA int8 i;
   XDATA int32 stop;
   XDATA int32 now;
	i=0;

// Wait for some response back from Fona
	stop = (getMs() + (AT_TIMEOUT * 1000));
	now  = getMs();
	while (uart1RxAvailable() == 0 && stop > now) {				// This && is still using up some DSEG but is cheaper than comparing stop to getMS()
		now  = getMs();
		delayMs(10);
	}  
	
	while (uart1RxAvailable() && i < 80) {
		uartCharacters[i] = uart1RxReceiveByte();
// Echo input received back out to USB also
	    if (usbPowerPresent()) {
			while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send a character
//				LED_RED(1);												// Error Indicator
				doServices();
			} ;
			usbComTxSendByte(uartCharacters[i]);
		}
		delayMs(10);
		i++;
	}
	uartCharacters[i] = 0;										// Add an end-of-string character after copying the input into the character array
	return uartCharacters;
}

void sendAT(XDATA char atString[40]) {
    XDATA char ATresponse[80]={0};
	uartEnable();
	printf(atString);
	delayMs(defaultATWait);
	strcpy(ATresponse, getFonaString());
}	

void configFona () {											// Set up lights and any other preferences here
    XDATA char atString[40]={0};
	uartEnable();												// Enable the serial connection
	strcpy(atString, "AT+CFUN=0\r\n"); sendAT(atString); // delayMs(4000);				// Sleep my little Fona		- Response should be "OK"
	strcpy(atString, "ATE0&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Switch off echo of commands so that wixel can buffer responses properly
	strcpy(atString, "AT+SLEDS=1,50,7500\r\n"); sendAT(atString); // delayMs(defaultATWait);	// Change timing of LED flashes for no connection - .05/7.5 secs: brief blink
	strcpy(atString, "AT&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Save changes
	strcpy(atString, "AT+SLEDS=2,500,2500\r\n"); sendAT(atString); // delayMs(defaultATWait);	// Change timing of LED flashes for network connection - .5/2.5 secs: slow
	strcpy(atString, "AT&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Save changes
	strcpy(atString, "AT+SLEDS=3,50,50\r\n"); sendAT(atString); // delayMs(defaultATWait);		// Change timing of LED flashes for GPRS connection - very fast
	strcpy(atString, "AT&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Save changes
}
	
BIT enableFona() {
	XDATA char atString[40];
	int8 i=0;

    uartEnable();												// Enable the serial connection
    strcpy(atString, "AT\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Ignore the first one as we just want to get the baudrate autosynched
	strcpy(atString, "AT+CFUN=1,1\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Wake up Baby
	delayMs(4000);												// Wait for Fona to reboot
    strcpy(atString, "AT\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Ignore the first one as we just want to get the baudrate autosynched
	return 1;													// I might take this out altogether if I'm not going to bother checking responses
}
	
void fonaDisable () {
	XDATA char static atString[40];

	strcpy(atString, "AT+CIPCLOSE\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Close the TCP connection	- Response should be CLOSE OK
    strcpy(atString, "AT+CGATT=0\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Check if connected to the GPRS network		- Response should be +CGATT: 1
	strcpy(atString, "AT+CIPSHUT\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Shut down GPRS			- Response should be SHUT OK
	strcpy(atString, "AT+CFUN=0\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Sleep my little Fona		- Response should be "OK"
	// I could add AT+CPOWD here to power down the Fona if I could work out how to turn it back on without adding more wires/transistors
	// I will probably add in the additional circuitry used in the ydrip at some stage
}

void fonaConnect() {
	XDATA char static atString[40];

	strcpy(atString, "AT+CSTT=");
	strcat(atString, apnString);
	strcat(atString, "\r\n");
	sendAT(atString);
    strcpy(atString, "AT+CGATT?\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Check if connected to the GPRS network		- Response should be +CGATT: 1
	strcpy(atString, "AT+CIICR\r\n"); sendAT(atString); // delayMs(defaultATWait);				// Bring up wireless connection with GPRS		- Response should be "OK"
	strcpy(atString, "AT+CIFSR\r\n"); sendAT(atString); // delayMs(defaultATWait);				// Get local IP address (not sure why)          - Response should be IP
	strcpy(atString, "AT+CIPSTART=tcp,");
	strcat(atString, dexie_host_address);
	strcat(atString, "\r\n");
	sendAT(atString);
	printf("AT+CIPSEND\r\n");									// Just send this once as a second one confuses Dexie
	delayMs(defaultATWait);
	delayMs(defaultATWait);								        // another delay to be sure server is listening
//   	printf("Hello - xDrip2G client for %s connected OK\r\n",wixFone_ID); // delayMs(defaultATWait);				// Just being polite really
//	sendAT(atString);//	Now ready to send data to the Dexie server. It will all then be sent with a CTRL-Z (\032) in fonaDisable() before closing the connection.
}


XDATA int16 getFonaMillivolts() {										// Get battery strength using Fona AT command - no extra resistors required!
	XDATA static int16 i=0;
	XDATA int8 counter=0;
	XDATA int8 loop=1;		// Was 3 but always got errors so just slowing us down.  Fix the error and remove the loop...
	XDATA int8 rxCount=0;
	XDATA int16 intMV = 0;
	XDATA char c[80] = {0};
//	XDATA char rxstring[40] ={0};
	XDATA char atString[40] = {0};
	
	strcpy(atString, "ATE0\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Switch off echo of commands so that wixel can buffer responses properly

	c[0]=0;														// And mark string as empty
	clearRxErrors();

	boardService();
	strcpy(atString, "AT+CBC\r\n"); //  sendAT(atString); //delayMs(1000);	// Ask for battery info - charging state, percentage and millivolts


	uartEnable();
	printf(atString);
	delayMs(100);

	rxCount = uart1RxAvailable();
	strcpy(c, (getFonaString()));
	
	if (usbPowerPresent()) {
			if(usbComTxAvailable() > 40) {							//  Check if room to send string
				strcpy(atString, "CBC> ");
				strcat(atString, c);
				usbComTxSend(atString, strlen(atString));
				doServices();
//				strcpy(usbString, "RX#> ");
//				strcat(usbString, rxCount); // I know it is not a string
//				usbComTxSend(usbString, strlen(usbString));
				};
		}

	i = strlen(c);
	
	if  (c[0]!=0) {
		if (c[i-13]==',') 	// Was 16 but that is before not after the percentage
							// There are only two digits if the 16th last character is a comma
		{		
			intMV=(((((c[i-15])-'0')*10))+((((c[i-14])-'0'))));		// Bit of maths to work out the percentage from these two characters
		} else {
// Extra lines as never thought would get to single digits
				if (c[i-14]==',') 											// There are only two digits if the 16th last character is a comma
				{		
					intMV=((((c[i-15])-'0')));		// Bit of maths to work out the percentage from these two characters
				} else {
					intMV=(100);											// Oherwise presumably the battery is 100% as 3 digits were found
				}
		} ;
	} else {
//			LED_RED(1);
			intMV=((1000*rxCount)+(100+i));							// If we get no response back then default to 100% as we don't know.
			}	;

	if (intMV < 15) {												// If battery is less than a third then
		LED_RED(1);	 }												// Switch on Red LED on Wixel to show low battery

		return intMV;
}

//On O2 network this gives the following result
//AT+SAPBR=3,1,"APN","internet"
//AT+SAPBR=1,1
//AT+CIPGSMLOC=1,1
//==>
//+CIPGSMLOC: 0,-6.130341,53.233086,2015/10/15,22:50:01
// (48 Stonebridge Ct, Shankill, Dublin 18, Ireland
// Latitude: 53.233086 | Longitude: -6.130341)

void getFonaGPS(GSMlocInfo* CIPGSMLOC) {

	XDATA uint8 i, j, clen, stage;
	XDATA char status[6] = {0};								//	Maximum of 5 characters and a termination character
	XDATA char atString[40];
	XDATA char c[80] = {0};
	
	strcpy(atString, "AT+CDNSCFG=8.8.8.8\r\n"); sendAT(atString);					// Using google for DNS here - you can replace if you like!
	strcpy(atString, "AT+SAPBR=0,1\r\n"); sendAT(atString);							// Not sure if I need this one
	strcpy(atString, "AT+SAPBR=3,1,\"Contype\",GPRS\r\n"); sendAT(atString);
//********************************************************************************************************************************************
//**																																		**
//**												IMPORTANT!!!!																			**
//**																																		**
//**									YOU PROBABLY NEED TO EDIT THE NEXT LINE																**
	strcpy(atString, "AT+SAPBR=3,1,\"APN\",\"internet\"\r\n"); sendAT(atString);
//**																																		**
//**																																		**
//  Whoops that might be more than 40 for some people																						**
//	The format of above line is AT+SAPBR=3,1,"{your_APN_here}","internet"<CR><LF>															**
//	Replace above with these commented lines once you get everything else working															**
//	I really need to set this up to use apnString from the top but it works for the moment...												**
//**																																		**
//********************************************************************************************************************************************

/*	This probably works but I didn't get a chance to test it yet!
	strcpy(atString, "AT+SAPBR=3,1,\"");
	strcat(atString, apnString);
	strcat(atString, "\",\"internet\"\r\n");
	sendAT(atString);
*/

	strcpy(atString, "AT+SAPBR=1,1\r\n"); sendAT(atString);

	strcpy(atString, "AT+CIPGSMLOC=1,1\r\n");
	printf(atString);
//	Response should be in the format "+CIPGSMLOC: 0,-6.130341,53.233086,2015/10/15,22:50:01" with some other characters and line feeds thrown in
	strcpy(c, getFonaString());		// I don't know if this is working - seem to be blanks if I don't muck about with responseStr
	clen=strlen(c);

	stage = 1;												//	Start with scanning for "+CIPGSMLOC: "
	j=0;
	for(i=0; i<clen; i++) {									//	Loop through every character of the response from the Fona to the AT command
//	Switch-Case might be more elegant than these stage conditions but I believe that might take more scarce internal memory
		if (stage == 1) {									//	Stage 1 - Find the '+' sign
			if (c[i]=='+') {								//	Seemingly valid CIPGSMLOC response
				i=i+12;										//	Position index to start of status field
				stage++;									//	Finish this stage of string processing and get ready for the next one
				j=0;
			}
		}
		if (stage == 2) {									//	Stage 2 - Get the status of the command
			if (c[i]==',') {
				status[j]=0;								//	We have all of the status so terminate the string
				if (strlen(status) == 1) {					//	If staus is 0 then move to next stage
					i++;									//	Skip past this comma before starting Stage 3
					stage++;								//	Finish this stage of string processing and get ready for the next one
					j=0;
				} else {									//	Otherwise we just pass back the error code in the gps field (for troubleshooting)
					stage=9;								//	Flag that we are complete as we got an error
				}
			} else {										//	Normally in the loop we just process each character in the received string
				status[j]=c[i];								//	Copy into the status variable, one character at a time
				j++;
			}
		}
															//	Potential Fona Status Codes:
															//	0		Success					602		No memory
															//	404		Not Found				603		DNS Error
															//	408		Request Time-out		604		Stack Busy
															//	601		Network Error			65535	Other Error
															
		if (stage == 3) {									//	Stage 3 - Get the GPS coordinates and place them in the pointered string
			if (c[i]==',' && j> 11) {						//	Check if we found the second comma in the longitude/latitude
//				*gpsptr=0;									//	We have all of the GPS so terminate the string
				CIPGSMLOC->LatLong[j]='\0';
				i++;										//	Skip past this comma before starting stage 4
				stage++;									//	Finish this stage of string processing and get ready for the next one
				j=0;
			} else {
//				*gpsptr[j]=c[i];							//	Copy in the gps coordinate one character at a time
				CIPGSMLOC->LatLong[j]=c[i];
//				*gpsptr=c[i];								//	Copy in the gps coordinate one character at a time
//				*gpsptr++;									//	Increment pointer to point to next item in fonaLatLong array
				j++;
			}
		}

		if (stage == 4) {									//	Stage 4 - Use the Date & Time to populate the first 14 bytes of the IV
				if(c[i]<'0') {
					i++;									// NEW	//	Skip the special character and assume next one is a number
				}											// NEW	//	which is safe as the string format does not contain two in a row anywhere
				if(c[i]>'9') {
					i++;									// NEW	//	Skip the special character and assume next one is a number
				}											// NEW	//	which is safe as the string format does not contain two in a row anywhere
				CIPGSMLOC->iv[j]=c[i];
//				*ivptr=c[i];									//	Copy in the gps coordinate one character at a time
//				*ivptr++;										//	Increment pointer to point to next item in Initialisation Vector array
				j++;
				if(j>13) {
					stage++;
				}
//			}
		}

		if (stage == 9) {									//	Stage 9 - If we are here then Heuston, we have a problem.
			for(i=0; i>j; i++) {							//	Re-using i here is not a problem as we will terminate anyway in the next condition
//				*gpsptr=status[i];							//	Copy the status bytes to the GPS bytes so it outputs the status code instead
				CIPGSMLOC->LatLong[i]=status[i];
			}
			CIPGSMLOC->LatLong[i]='\0';						//	Terminate the copy of the status string
			}
		if (stage>4) {										//	Terminate the loop if we are finished all the processing (or have an error)
			i=clen;
		}
	}														//	End of For Loop

//	Final check after the loop ends to make sure everything went okay	
	if (stage == 1) {										// If we did not get values then we want to indicate this with a unique error code
//		*gpsptr='9';*gpsptr='9';*gpsptr='9';*gpsptr='/0';	// GPS value is now a string with "999" to indicate that no valid string was received
		strcpy(CIPGSMLOC->LatLong,"999");
			for(i=0; i==23; i++) {							//	Re-using i here is not a problem as we will terminate anyway in the next condition
				CIPGSMLOC->LatLong[i]=c[i];
			}
		CIPGSMLOC->LatLong[24]='\0';
		strcpy(CIPGSMLOC->LatLong,"999");
		CIPGSMLOC->iv[0]=clen;
		CIPGSMLOC->iv[1]=clen;
		CIPGSMLOC->returncode=clen;

	}
}

XDATA 
void print_packet(Dexcom_packet* pPkt) {
	XDATA int16 fonaBat=0;
	XDATA char fonaLatLong[25] = {0};
    XDATA char transID[] = "BLANK"; 

	GSMlocInfo CIPResponse;
	// Secret Key - 16 bytes
//	XDATA uint8_t key[] = { 0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c };
// Initialisation Vector - non-repeating but not necessarily random.  Make this the date/time epoch and send in preamble
//	XDATA uint8_t iv[]  = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f };
	XDATA uint8_t iv[16]  = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f };
//	XDATA uint8_t iv[16]  = { 0 };
	// Input Text - 16 bytes

	XDATA uint8_t i;
	XDATA uint8_t sprintfBuffer[64];
	XDATA uint8_t AESBuffer[64];
	XDATA int prtlen;
	
//	memset(sprintfBuffer,' ',64);

    uartEnable();

//	delayMs(60000);												//	Used for debugging - when I want to run downstairs and connect to the TTL cable
	if(enable_wixfone==1) {
	// Protocol suitable for WixFone/Dexie configuration. Data sent over 2G and then uploaded to mongo for subsequent pull down by xDrip
		fonaBat=getFonaMillivolts();							//	Ask the fona for the battery health - best to do gets immediately after uart enabled

//		iv=getFonaDateTime();									//	YYYYMMDDHHMMSS00 will do fine as a unique value - get it from AT+CIPGSMLOC=2

		enableFona();
		getFonaGPS( &CIPResponse );
		strcpy(fonaLatLong, CIPResponse.LatLong);
		strcpy(iv, CIPResponse.iv);
		iv[14]=pPkt->txId;										//	Randomise the IV further by updating this spare byte with the packet sequence number
		iv[15]=pPkt->checksum;									//	Randomise the IV further by updating this other spare byte with the packet checksum
		

		fonaConnect();		// Establish a connection to the Dexie server
		dexcom_src_to_ascii(pPkt->src_addr, transID);			// Get a human-readable version of the Dexcom Transmitter ID
//		cli();
/*	COMMENT OUT TEMPORARILY AS DSEG GETTING FULL
	if (encrypt_output==0) {
		if (pPkt->len==0) { 									// Check for empty packet and just send fonabat (and gps). Server will not update BG.
//			printf("xDrip2g: %s %hhu %s %lu %lu %d %d %hhu  \r\n", wixFone_ID, 0, wixFone_ID, 0, 0, 0, 0, fonaBat);	//	Voltage percentage of WixFone battery (derived by Fona)
//			printf("xDrip2g: %s %hhu %s %lu %lu %lu %lu %hhu %s \r\n", wixFone_ID, 0, "NoReading", 0, 0, 0, 0, fonaBat, fonaLatLong);	//	Blank values to accompany voltage and GPS
			printf("xDrip2g: %s 0 NoReading 0 0 0 0 %hhu %s\r\n", wixFone_ID, fonaBat, fonaLatLong);	//	Blank values to accompany voltage and GPS
		} else {												// Otherwise print the full packet details as normal
		printf("xDrip2g: %s %hhu %s %lu %lu %d %d %hhu %s \r\n",	// Send/Print the values to the Dexie server
			wixFone_ID, 					 					// 		xDrip2g Device Identifier
			pPkt->txId, 					 					// 		Transmission ID - unique-ish identifier
			transID,						 					// 		Transmitter ID - from packet in case only_listen_for_my_transmitter false
			dex_num_decoder(pPkt->raw),		 					// 		Raw BQ Value
			dex_num_decoder(pPkt->filtered)*2,					// 		Filtered BG Value
			pPkt->battery, 					 					// 		Dexcom Transmitter Battery
//			getPacketRSSI(pPkt),			 					// 		It saves memory to do it directly in the next line instead of using this function
			(((pPkt->RSSI)/2)-73),								//		Received Signal Strength Indicator
			fonaBat,											// 		Voltage in Millivolts of WixFone battery (derived by Fona)
			fonaLatLong);										//		GP Coordinates of cell tower
		}
	}
*/		
//		printf("Response was %s \r\n", responseString);
//		printf("fonaLatLong was %s \r\n", fonaLatLong);
// TEMP OUT		
//		if (encrypt_output==1) {
			
			prtlen = sprintf(sprintfBuffer, "%s %hhu %s %lu %lu %d %d %hhu %s",	
				wixFone_ID, 					 				// 		xDrip2g Device Identifier
				pPkt->txId, 					 				// 		Transmission ID - unique-ish identifier
				transID,						 				// 		Transmitter ID - from packet in case only_listen_for_my_transmitter false
				dex_num_decoder(pPkt->raw),		 				// 		Raw BQ Value
				dex_num_decoder(pPkt->filtered)*2,				// 		Filtered BG Value
				pPkt->battery, 					 				// 		Dexcom Transmitter Battery
				(((pPkt->RSSI)/2)-73),							//		Received Signal Strength Indicator
				fonaBat,										// 		Voltage in Millivolts of WixFone battery (derived by Fona)
				fonaLatLong);									//		GPS Coordinates of cell tower(derived by Fona)
				
//			printf("Input of %d chars is %s\r\n", prtlen, sprintfBuffer);
			
			for(i = prtlen; i < 64; ++i)
				sprintfBuffer[i]=' ';							//		Fill rest of array with spaces
			
//			ADD IN GPS VALUES HERE CONDITIONALLY				

//			encrypt(output, input, length, key, vector)
			AES128_CBC_encrypt_buffer(AESBuffer, sprintfBuffer, 64, key, iv);   // swap prtlen for 64 here?
																// If we don't use prtlen then do we need to pad this to prevent errors?
//			AES128_CBC_encrypt_buffer(AESBuffer, sprintfBuffer, prtlen, key, iv);   // swap prtlen for 64
//			uartEnable();										// Enable UART serial port to talk to Fona
//			enableFona();										// Switch on Fona
//			fonaConnect();										// Establish a connection to the Dexie server

//			prtlen = strlen(AESBuffer);							// probably 48 as rounded up to next 16 byte block (but 64 with GPS)
//			printf("Output is %d characters long\r\n", prtlen);
//*/ //		End TEMP OUT
			
			printf("xDrip2g(AES): ");

			for(i = 0; i < 16; ++i)
				printf("%02x", iv[i]);							//		Print initialisation vector as this is not a secret, just unique

			printf(" ");	

			for(i = 0; i < 64; ++i) 
				printf("%02x", AESBuffer[i]);

			printf("\r\n\032");									// CR/LF and Escape ctrl-z character

//		}	// TEMP GO
		
		delayMs(defaultATWait);									// Need to wait here also as sometimes missing ctrl-z
		printf("\032");											// Send all the data with ctrl-z (do it again to be sure)
		delayMs(defaultATWait);
		fonaDisable();											// Disconnect and send the fona asleep
		}															// End of wixfone conditions

    uartDisable();
}

void makeAllOutputs() {
    int XDATA i;
    for (i=1; i < 16; i++) { // in the future, this should be set to only the channels being used for output, and add the one for input
        setDigitalOutput(i, LOW);
    }
}
void makeAllOutputsLow() {
    int XDATA i;
    for (i=0; i < 16; i++) {
        setDigitalOutput(i, LOW);
    }
}

void reset_offsets() {
    int XDATA i;
    for(i=0; i<4; i++) {
        fOffset[i] = defaultfOffset[i];
    }
}

void killWithWatchdog() {
    WDCTL = (WDCTL & ~0x03) | 0x00;
    WDCTL = (WDCTL & ~0x04) | 0x08;
}

XDATA void goToSleep (XDATA int16 seconds) {
    adcSetMillivoltCalibration(adcReadVddMillivolts());
    makeAllOutputsLow();

    if(!needsTimingCalibration) {
        if(!usbPowerPresent()){
            unsigned char temp;
            unsigned char storedDescHigh, storedDescLow;
            BIT storedDma0Armed;
            unsigned char storedIEN0, storedIEN1, storedIEN2;

            uint8 savedPICTL = PICTL;
            BIT savedP0IE = P0IE;
            uint8 savedP0SEL = P0SEL;
            uint8 savedP0DIR = P0DIR;
            uint8 savedP1SEL = P1SEL;
            uint8 savedP1DIR = P1DIR;

            sleepInit();

            disableUsbPullup();
            usbDeviceState = USB_STATE_DETACHED;
            usbEnabled = 0;
            SLEEP &= ~(1<<7);

            WORCTRL |= 0x03; // 2^5 periods
            switchToRCOSC();

            storedDescHigh = DMA0CFGH;
            storedDescLow = DMA0CFGL;
            storedDma0Armed = DMAARM & 0x01;
            DMAARM |= 0x81;
            dmaDesc[0] = ((unsigned int)& PM2_BUF) >> 8;
            dmaDesc[1] = (unsigned int)& PM2_BUF;

            DMA0CFGH = ((unsigned int)&dmaDesc) >> 8;
            DMA0CFGL = (unsigned int)&dmaDesc;
            DMAARM = 0x01;

            // save enabled interrupts
            storedIEN0 = IEN0;
            storedIEN1 = IEN1;
            storedIEN2 = IEN2;

            //enable sleep timer interrupt
            IEN0 |= 0xA0;

            //disable all interrupts except the sleep timer
            IEN0 &= 0xA0;
            IEN1 &= ~0x3F;
            IEN2 &= ~0x3F;

            WORCTRL |= 0x04;  // Reset
            temp = WORTIME0;
            while(temp == WORTIME0) {};
            WOREVT1 = seconds >> 8;
            WOREVT0 = seconds;

            temp = WORTIME0;
            while(temp == WORTIME0) {};

            MEMCTR |= 0x02;
            SLEEP = 0x06;
            __asm nop __endasm;
            __asm nop __endasm;
            __asm nop __endasm;
            if(SLEEP & 0x03){
                __asm mov 0xD7, #0x01 __endasm;
                __asm nop __endasm;
                __asm orl 0x87, #0x01 __endasm;
                __asm nop __endasm;
            }
            IEN0 = storedIEN0;
            IEN1 = storedIEN1;
            IEN2 = storedIEN2;
            DMA0CFGH = storedDescHigh;
            DMA0CFGL = storedDescLow;
            if(storedDma0Armed){
                DMAARM |= 0x01;
            }
            // Switch back to high speed
            boardClockInit();

            PICTL = savedPICTL;
            P0IE = savedP0IE;
            P0SEL = savedP0SEL;
            P0DIR = savedP0DIR;
            P1SEL = savedP1SEL;
            P1DIR = savedP1DIR;
            USBPOW = 1;
            USBCIE = 0b0111;
        } else {
            uint32 start_waiting = getMs();
            if(!usbEnabled) {
                usbDeviceState = USB_STATE_POWERED;
                enableUsbPullup();
                usbEnabled = 1;
            }
            delayMs(100);
            while((getMs() - start_waiting) < (seconds * 1000)) {
                doServices();
            }
        }
    }
    makeAllOutputs();
}


void putchar(XDATA char c) {
	while(uart1TxAvailable() == 0) {								//  Loop until space in the TX buffer to send a character
		LED_RED(1);													// Error Indicator
		boardService();
	} ;
    uart1TxSendByte(c);
    if (usbPowerPresent()) {
		while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send a character
//			LED_RED(1);												// Error Indicator
			boardService();
		} ;
        usbComTxSendByte(c);
		boardService();
		}
	LED_RED(0);														// Error gone
}

void printfUSB(char * stringForUSB) {
	XDATA uint8 length, i;
	
    if (usbPowerPresent()) {
	
		length = strlen(stringForUSB);
        stringForUSB[length++] = ('/r');
        stringForUSB[length++] = ('/n');
		
		for(i = 0; i < length; ++i) {
			while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send each character
				doServices();
			} ;
			usbComTxSendByte(stringForUSB[i]);		
		}
	}
// Probably recreating usbComTxSend (const uint8 XDATA *buffer, uint8 size) here	
// usbComTxSend(stringForUSB,length);
}


void swap_channel(XDATA uint8 channel, XDATA uint8 newFSCTRL0) {
    do {
        RFST = 4;   //SIDLE
    } while (MARCSTATE != 0x01);

    FSCTRL0 = newFSCTRL0;
    CHANNR = channel;
    RFST = 2;   //RX
}

void strobe_radio(int radio_chan) {
    radioMacInit();
    MCSM1 = 0;
    radioMacStrobe();
    swap_channel(nChannels[radio_chan], fOffset[radio_chan]);
}


int WaitForPacket(XDATA uint16 milliseconds, Dexcom_packet* pkt, XDATA uint8 channel) {
    XDATA uint32 start = getMs();
    XDATA uint8 * packet = 0;
    XDATA uint32 i = 0;
    XDATA uint32 six_minutes = 360000;
    XDATA int nRet = 0;
    XDATA char transID[] = "BLANK"; 	// Line added
    swap_channel(nChannels[channel], fOffset[channel]);

    while (!milliseconds || (getMs() - start) < milliseconds) {
        doServices();
        blink_yellow_led();
        i++;
        if(!(i % 40000)) {
            strobe_radio(channel);
        }
        if(getMs() - start > six_minutes) {
            killWithWatchdog();
            delayMs(2000);
        }
        if (packet = radioQueueRxCurrentPacket()) {
            uint8 len = packet[0];
            fOffset[channel] += FREQEST;
            memcpy(pkt, packet, min8(len+2, sizeof(Dexcom_packet)));
            if(radioCrcPassed()) {
				dexcom_src_to_ascii(pkt->src_addr, transID);			// Get a human-readable version of the Dexcom Transmitter ID
//                if(pkt->src_addr == dex_tx_id || dex_tx_id == 0 || only_listen_for_my_transmitter == 0) {  // Making dex_tx_id uses too much memory
//				if(transID == transmitter_id || only_listen_for_my_transmitter == 0) {
				if(strcmp(transID,transmitter_id) == 0 || only_listen_for_my_transmitter == 0) { // strcmp will be zero if they match
                    pkt->txId -= channel;
                    radioQueueRxDoneWithPacket();
                    LED_YELLOW(0);
                    last_catch_channel = channel;
                    return 1;
                } else {
                    radioQueueRxDoneWithPacket();
                }
            } else {
                radioQueueRxDoneWithPacket();
                LED_YELLOW(0);
                return 0;
            }
        }
    }
    LED_YELLOW(0);
    return nRet;
}

XDATA uint32 delayFor(XDATA int wait_chan) {
    if(needsTimingCalibration) {
        return delayedWaitTimes[wait_chan];
    }
    if(!wait_chan && sequential_missed_packets) {
        return waitTimes[wait_chan] + (sequential_missed_packets * wake_earlier_for_next_miss * 2 * 1000);
    } else {
        return waitTimes[wait_chan];
    }
}

BIT get_packet(Dexcom_packet* pPkt) {
    int nChannel = 0;
    for(nChannel = start_channel; nChannel < NUM_CHANNELS; nChannel++) {
        switch(WaitForPacket(delayFor(nChannel), pPkt, nChannel)) {
        case 1:
            needsTimingCalibration = 0;
            sequential_missed_packets = 0;
            return 1;
        case 0:
            continue;
        }
    }
    sequential_missed_packets ++;
    if(sequential_missed_packets > misses_until_failure) {
        sequential_missed_packets = 0;
        needsTimingCalibration = 1;
    }
    reset_offsets();
    last_catch_channel = 0;
    return 0;
}

void setADCInputs() {
    P0INP=0; //set pull resistors on pins 0_0 - 0_5 to low
}

void configBt() {
    uartEnable();
    printf("AT+NAMExDrip");
    uartDisable();
}

void main() {
    systemInit();
    initUart1();
//	usbInit();
    P1DIR |= 0x08; // RTS
    sleepInit();

    makeAllOutputs();
    setADCInputs();
    delayMs(1000);

	if(enable_wixfone==0) { 										// Don't do Bluetooth piece if there is a Fona attached instead of a HM1x
    configBt();
	} else {
	enableFona();
	}																// Everything else the same after here
    delayMs(1000);

    radioQueueInit();
    radioQueueAllowCrcErrors = 1;
    MCSM1 = 0;

    while(1) {
        Dexcom_packet Pkt;
        memset(&Pkt, 0, sizeof(Dexcom_packet));
        boardService();

//        if(get_packet(&Pkt)) {
			get_packet(&Pkt);		// Always try to get a packet but now print even if none received so we can still update devicestatus, etc.
            print_packet(&Pkt);
//        }

        RFST = 4;
        delayMs(100);

        radioMacSleep();
        if(usbPowerPresent()){
            sequential_missed_packets++;	// Why only increment this if usb connected?  It is incremented in get_packet also so a bit confusing
        }
        if(sequential_missed_packets > 0) {
            int first_square = sequential_missed_packets * sequential_missed_packets * wake_earlier_for_next_miss;
            int second_square = (sequential_missed_packets - 1) * (sequential_missed_packets - 1) * wake_earlier_for_next_miss;
//			goToSleep(185 - first_square + second_square);
            int sleep_time = (195 - first_square + second_square);
            goToSleep(sleep_time);
        } else {
            goToSleep(210); // Might need to be 200
        }
        radioMacResume();
        MCSM1 = 0;
        radioMacStrobe();
    }
}