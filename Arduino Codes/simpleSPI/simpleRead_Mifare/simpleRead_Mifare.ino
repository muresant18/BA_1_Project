/* ===========================================================
    This example will wait for any ISO14443A card or tag, and
    will attempt to read from it.
    (If the card has a 4-byte UID it is probably a Mifare
    Classic card)
    The following steps are taken:
    - Authenticate block 4 (the first block of Sector 1) using
      the default KEYA of 0XFF 0XFF 0XFF 0XFF 0XFF 0XFF
    - If authentication succeeds, we can then read any of the
      4 blocks in that sector (though only block 4 is read here)
   ===========================================================  
*/

#if 1
  #include <SPI.h>
  #include <PN532_SPI.h>
  #include "PN532.h"
  PN532_SPI pn532spi(SPI, 10);
  PN532 nfc(pn532spi);
#endif

int cnt = 1;

void setup(void) {
  Serial.begin(115200);
  nfc.begin();
  nfc.SAMConfig();  // configure board to read RFID tags
  Serial.println("Waiting for an ISO14443A Card ...");

  SPI.beginTransaction(SPISettings(1000000,       LSBFIRST,  SPI_MODE0));
//                    (SPISettings(speedMaximum, dataOrder, dataMode ))
}

void loop(void) {
  uint8_t success;
  uint8_t uid[] = { 0, 0, 0, 0, 0, 0, 0 };  // Buffer to store the returned UID
  uint8_t uidLength; // a 4 bytes long UID <=> an Mifare Classic ISO14443A
    
  // Wait for an ISO14443A cards.  When one is found 'uid' will be populated, 
  // and uidLength will indicate if the uid is 4 bytes (Mifare Classic).
  success = nfc.readPassiveTargetID(PN532_MIFARE_ISO14443A, uid, &uidLength);
  
  if (success) {
    // Display some basic information about the card
    Serial.print("                                                    Read Number: ");Serial.println(cnt++, DEC);
    Serial.print("  UID Length: ");Serial.print(uidLength, DEC);Serial.println(" bytes");
    Serial.print("  UID Value: ");
    nfc.PrintHex(uid, uidLength);
    Serial.println("");
    
    if (uidLength == 4){
      // We probably have a Mifare Classic card ... 
      Serial.println("Seems to be a Mifare Classic card (4 byte UID)");

      // try to authenticate it for read/write access
      // Try with the factory default KeyA: 0xFF 0xFF 0xFF 0xFF 0xFF 0xFF
      Serial.println("Trying to authenticate block 4 with default KEYA value");
      uint8_t keya[6] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
    
    // Start with block 4 (the first block of sector 1), 
    // since sector 0 contains the manufacturer data 
      success = nfc.mifareclassic_AuthenticateBlock(uid, uidLength, 4, 0, keya);
    
      if (success){
        Serial.println("Sector 1 (Blocks 4..7) has been authenticated");
        uint8_t data[16];
    
        // Try to read the contents of block 4
        success = nfc.mifareclassic_ReadDataBlock(4, data);
    
        if (success){
          // Data seems to have been read ... spit it out
          Serial.println("Reading Block 4:");
          nfc.PrintHexChar(data, 16);
          Serial.println("");
          delay(500); // Wait one sec before reading the card again
        }
        else{
          Serial.println("***Unable to read the requested block.***  Try another key?");
        }
      }
      else{
        Serial.println("***Authentication failed.*** Try another key?");
      }
    }
    delay(1);
  }
}
