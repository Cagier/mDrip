Welcome to the mDrip.  Here is a very brief overview from an initial draft of a wiki that I started a long time ago.

This is very much a work in progress but so far I have built and tested the hardware to read the Dexcom G4 signals and send them directly over the internet using a SIMCOM "Fona" device. I am nearly finished creating an "instructable" for the hardware and I will publish that over the coming days hopefully.

I created this variation of the system for a number of reasons: 1) I really needed to miniaturise my xDrip rig. My 5 year old was carrying his pump, xDrip and a smartphone around with him and I need to get rid of the phone as he couldn't carry it. 2) Due to the rapid movements of a 5 year-old, he is dropping in and out of range of the uploader and so I wanted to reduce the number of lost packets 3) Reduced cost - by replacing the smartphone with a fona I can keep the data costs to an absolute minimum as it only sends a few kilobytes every few minutes 4) I had seen a few things that the Fona had been used for and I thought that the generic hardware might be useful for other things 5) Because it would be fun!

Here is a conceptual diagram (based on one I robbed from the dexterity wiki page).

(To be inserted once I clone this version of the repository and upload the image!)

Basically, the wixel and the Fona are wired together in a similar way to the how the wixel and the HM1x BT module are wired up. The wixel controls the fona using AT commands over the UART1 connection and sends the BG entries over the internet via a TCP/IP connection. I have named this combination a "WixFone", but also refer to the overall system as mDrip. The fona can only use a 2g network (as the 3g version does not do tcp/ip yet).

This is a bit similar to the way that the Wifi mesh/ dexterity system works but eliminates the need for an additional android device and allows it to operate independently of Wifi. Dexterity devices need to stay online in order to receive pull requests from the xDrip unless they upload the data to a Mongo database which can be read by the xDrip. The mDrip does the same thing and uses the Mongo database to store this information.

Unfortunately, at the moment, the 2g fona does not have ssl support (and the 3g fona does not work with tcp/ip at all) so I found it difficult to update the mongo db directly as I could not authenticate properly. I also didn't think that I could get the mongo c driver working on the limited wixel resources. I am using AES encryption before sending it to a "middleman" to upload this to the mongolab database. Ideally I will get over this restriction somehow and even ideally update the Nightscout database directly (although calculating BG values etc. on the wixel seems a bit ambitious!)

The code is hacked together from various cut and pastes but it works. Separately I just about have a java program working that listen on that socket, reads the values and uploads them to a Mongo database for receipt by the xDrip app on the phone. This also has a separate AES encrypt/decrypt function which I use using when I switch on encryption at the transmitter end (as I have read previous concerns about sending the BG data in clear over the internet for public releases).

I am not an electronics engineer, or a C or java programmer and this has been a very difficult journey. Any assistance that anyone wants to provide as I stumble through this project would be gratefully received!

All based on Stephen Black's original xDrip project so thanks to all involved.  I'll be uploading my version of the sources and some graphics shortly.