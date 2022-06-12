#include "macros.h"

struct Errors errors = {};
char rawPacket[255];
int idx = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(19200);
  memset(rawPacket, '\0', 255);
}

void loop() {
  // put your main code here, to run repeatedly:
  
  while (Serial.available() > 0) {
    rawPacket[idx] = Serial.read();
    if (rawPacket[idx] == '\n' || rawPacket[idx] == '\r') {
      char completePacket[255];
      strcpy(completePacket, rawPacket);
      Serial.println(completePacket);
      parseNMEA(completePacket);
      memset(rawPacket, '\0', 255);
      idx = 0;
      continue;
    }
    idx++;
  }
}

void parseNMEA(char* packet) {
  if (strncmp(packet, "$PFLAE", 6) == 0) {
    processErrorMessage(packet);
  }
}

void processErrorMessage(char* packet) {
  char params[5][50];
  char param[50];
  uint8_t idx = 0;
  uint8_t paramIdx = 0;
  memset(params, '\0', 200);
  memset(param, '\0', 50);
  
  for (int i = 0; i < strlen(packet); i++) {
    if (packet[i] == ',' || packet[i] == '\n') {
      param[idx] = '\0';
      idx = 0;
      memcpy(params[paramIdx], param, 50);
      memset(param, '\0', 50);
      paramIdx++;
      continue;
    }
    param[idx] = packet[i];
    idx++;
  }

  errors.queryType = params[1][0];
  errors.severity = params[2][0] - 48;
  memcpy(errors.errorCode, params[3], 2);
  memcpy(errors.message, params[4], 50);

  Serial.println(errors.queryType);
  Serial.println(errors.severity);
  Serial.println(errors.errorCode);
  Serial.println(errors.message);
  
}
