#include "mbed.h"
#include "BTSerial.h"

Serial pc(USBTX, USBRX);
BTSerial BTSerial(D10,D2);

void InitBTModule();
int main()
{
    uint8_t serialBuf[30];
    uint8_t tableNum;
    uint8_t tableBuf[9];
    uint8_t numOfOrder;
    //int counter = 0;
    InitBTModule();
    while(1) {
        /*BTSerial.Forward(60);
        wait(2); 
        BTSerial.Back(50);
        wait(2); 
        BTSerial.Right(40);
        wait(2); 
        BTSerial.Left(20);
        wait(2);
        BTSerial.Stop();
        wait(2); */
        if (BTSerial.BTModule.readable())
        {  
            pc.putc(BTSerial.BTModule.getc());
        }
        if (pc.readable())
        {  
            BTSerial.BTModule.putc(pc.getc());
        }
    }
}

void InitBTModule(){

    //Init Master Module
    while(!BTSerial.BTModule.writeable()) {} //wait until writeable
    pc.printf("\r\nStarting Master Program\r\n");
    BTSerial.BTModule.printf("AT+RENEW\r\n");
    pc.printf("Device Reset\r\n");
    wait(2);
    BTSerial.BTModule.printf("AT+ROLE1\r\n");
    pc.printf("Device Set to Master\r\n");
    /*while (BTSerial.BTModule.readable()) //flush BTSerial.BTModule buffer
        pc.putc(BTSerial.BTModule.getc()); 
    
    //Connecting Slave Module   
    wait(2);
    BTSerial.BTModule.printf("AT+INQ\r\n"); //inquires if there are any slaves nearby
    pc.printf("Device Looking for Slaves\r\n");
    int numDevices = -1;
    while (numDevices <= 0) {
        if (BTSerial.BTModule.getc() == 'D') { //waits for "Devices Found x" line
            for (int i = 0; i < 13; i++) //skip to number of devices
                char temp = BTSerial.BTModule.getc();
            
            numDevices = BTSerial.BTModule.getc() - '0';
            pc.printf("Found %i Slave Devices \r\n", numDevices);
            if (numDevices == 0)
                BTSerial.BTModule.printf("AT+INQ\r\n");
        }
    }
    pc.printf("Connecting to device 1\r\n");
    BTSerial.BTModule.printf("AT+CONN1\r\n"); //connects to first device in the list
    wait(3); //wait to connect*/
    BTSerial.BTModule.putc('&'); //send & to test if connection is established
    pc.printf("Sending test character, waiting for ACK\r\n");
    while (BTSerial.BTModule.getc() != '&') { BTSerial.BTModule.putc('&'); } //wait for acknowledgement
    pc.printf("ACK received\r\n"); //received &, and can proceed with instructions
    pc.printf("Writing LEDs\r\n");
}