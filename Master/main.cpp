#include "mbed.h"
#include "BTSerial.h"

Serial pc(USBTX, USBRX);
BTSerial BTSerial(D8,D2); // 블루투스 프로토콜 객체 선언 

void InitBTModule();

int main()
{
    InitBTModule(); 
    while(1) {
        if (BTSerial.BTModule.readable())
        {  
            pc.putc(BTSerial.BTModule.getc()); /
        }
        if (pc.readable())
        {  
            char c = pc.getc();
            BTSerial.BTModule.putc(c);  //매트랩(pc)에서 수신한 노드와 서빙 커맨드 배열을 슬레이브 보드에 송신
            //블루투스 프로토콜 클래스를 사용하였기 때문에, pc 시리얼 모니터로도 무선 조작이 가능.
        }
    }
}

//블루투스 통신 활성화
void InitBTModule(){
    //Init Master Module
    while(!BTSerial.BTModule.writeable()) {} //wait until writeable
    pc.printf("\r\nStarting Master Program\r\n");
    BTSerial.BTModule.printf("AT+RENEW\r\n");
    pc.printf("Device Reset\r\n");
    wait(2);
    BTSerial.BTModule.printf("AT+ROLE1\r\n");
    pc.printf("Device Set to Master\r\n");
    //while (BTSerial.BTModule.readable()) //flush BTSerial.BTModule buffer
     //   pc.putc(BTSerial.BTModule.getc()); 
    
   // Connecting Slave Module   
    //wait(2);
    //BTSerial.BTModule.printf("AT+INQ\r\n"); //inquires if there are any slaves nearby
    //pc.printf("Device Looking for Slaves\r\n");
    //int numDevices = -1;
    //while (numDevices <= 0) {
       // if (BTSerial.BTModule.getc() == 'D') { //waits for "Devices Found x" line
           // for (int i = 0; i < 13; i++) //skip to number of devices
              //  char temp = BTSerial.BTModule.getc();
            //
           // numDevices = BTSerial.BTModule.getc() - '0';
         //   pc.printf("Found %i Slave Devices \r\n", numDevices);
       //     if (numDevices == 0)
     //           BTSerial.BTModule.printf("AT+INQ\r\n");
    //    }
    //}
    //pc.printf("Connecting to device 1\r\n");
    //BTSerial.BTModule.printf("AT+CONN1\r\n"); //connects to first device in the list
    //wait(3);
    BTSerial.BTModule.putc('&'); //send & to test if connection is established
    pc.printf("Sending test character, waiting for ACK\r\n");
    while (BTSerial.BTModule.getc() != '&') { BTSerial.BTModule.putc('&'); } //wait for acknowledgement
    pc.printf("ACK received\r\n"); //received &, and can proceed with instructions
}
