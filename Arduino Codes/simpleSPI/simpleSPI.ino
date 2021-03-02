#include "SPI.h"

void setup() {
     SPI.begin();            // initialize the SPI communication
   digitalWrite(SS, HIGH); // disable Slave Select
//   digitalWrite(SS, LOW); // enable Slave Select

   
   SPI.beginTransaction(SPISettings(1000000, LSBFIRST, SPI_MODE0));
//                      SPISettings speedMaximum, dataOrder, dataMode
}
 
void loop() {
   digitalWrite(SS, LOW); // enable Slave Select
   delay(1);

   for(int i = 1; i<=5; i++){
      SPI.transfer(i);
      delay(1/50);
   }
  
   digitalWrite(SS, HIGH); // disable Slave Select
   delay(10000);
}
