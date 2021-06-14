#ifndef MBED_SHIFTREG_H
#include "mbed.h"

//블루투스 프로토콜 함수
class BTSerial {
private:
    uint8_t sendBuf[8];
    void FillBigend (uint8_t *bufPointer, uint16_t data);
    uint16_t GetChecksum (uint8_t *bufPointer);
    void FillChecksum ();
    void SendFunc ();
    void SendCmd (uint8_t cmd, uint16_t par);
    void SendCmd (uint8_t cmd);
    //uint8_t recvBuf[10];
    //bool is_reply;
public:
    Serial BTModule;
    BTSerial(PinName tx, PinName rx );
    void Forward (uint16_t num);
    void Back (uint16_t num);
    void Right (uint16_t num);
    void Left (uint16_t num);
    void End ();
    void Start ();
};
 
#endif