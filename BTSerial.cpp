#include "BTSerial.h"
BTSerial::BTSerial(PinName tx, PinName rx): BTModule(tx, rx)
{
    //PROTOCOL 설정
    //STX LEN CMD PARAMETER PARAMETER CHECKSUM CHECKSUM ETX
    uint8_t tmp[8] = {0x02, 05, 00, 00, 00, 00, 00, 0x03}; 
    memcpy(sendBuf, tmp, 8);
    BTModule.format(8,Serial::None,1);
    BTModule.baud(9600);
}
/*void BTSerial::set_reply (uint8_t state)
{
    is_reply = state;
    sendBuf[4] = is_reply;
}*/
void BTSerial::FillBigend (uint8_t *bufPointer, uint16_t data) 
{
    *bufPointer =   (uint8_t)(data>>8);  //16비트를 2개의 8비트로 변환
    *(bufPointer+1) =   (uint8_t)data;
}
//calc checksum (1~6 byte)
uint16_t BTSerial::GetChecksum (uint8_t *bufPointer)
{
    uint16_t sum = 0;
    for (int i=1; i<5; i++) {
        sum += bufPointer[i];
    }
    return sum;
}
//fill checksum to sendBuf (7~8 byte)
void BTSerial::FillChecksum ()
{
    uint16_t checksum = GetChecksum (sendBuf);
    FillBigend (sendBuf+5, checksum);
}
void BTSerial::SendFunc ()
{
    int i;
    for (i = 0; i < 8; i++) {
        BTModule.putc(sendBuf[i]);
    }
}

void BTSerial::SendCmd (uint8_t cmd, uint16_t par)
{
    sendBuf[2] = cmd;
    FillBigend (sendBuf+3, par);
    FillChecksum ();
    SendFunc ();
}
void BTSerial::SendCmd (uint8_t cmd)
{
    sendBuf[2] = cmd;
    FillBigend (sendBuf+3, 0);
    FillChecksum ();
    SendFunc ();
}
//CMD Method
void BTSerial::Forward (uint16_t num)
{
    SendCmd (0x04, num);
}
void BTSerial::Back (uint16_t num)
{
    SendCmd (0x05, num);
}
void BTSerial::Right (uint16_t num)
{
    SendCmd (0x06, num);
}
void BTSerial::Left (uint16_t num)
{
    SendCmd (0x07, num);
}
void BTSerial::Stop ()
{
    SendCmd (0x08);
}