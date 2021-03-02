
// Code for a simple I2C communication
// Packages which contains the address followed by two data bytes will be send to the selected address (0x23)
// For Arduino UNO:
// Serial clock line SCL to pin A5
// Serial data line SDA to pin A4


#include<Wire.h>                                    //Library for I2C Communication functions

byte x = 0;
void setup() { 
  Serial.begin(115200);                             //Begins Serial Communication at 9600 baud rate
  Wire.begin(0x23);                                     //Begins I2C communication at pin (A4,A5)
}

void loop(){
    Wire.requestFrom(0x23,1);                        // request 1 byte from slave (0x23)
    byte MasterReceive = Wire.read();                // receive a byte from the slave arduino and store in MasterReceive
    Serial.println("Master Received From Slave");    //Prints in Serial Monitor 
    Serial.println(MasterReceive);  
    
    for (int y=0; y<20; y++){
      for(x=0; x<=25; x+=5){ 
        Wire.beginTransmission(0x23);           // start transmit to slave arduino (8)
        Wire.write(x);                          // first data byte to be sendet to slave
        Wire.write(x-1);                        // second data byte to be sendet to slave
        Wire.endTransmission();                 // both data bytes will be now transmited followed by a stop condition
        Serial.println(x);
//        delay(1);
      }
      delay(1);
    }                                  
}     
