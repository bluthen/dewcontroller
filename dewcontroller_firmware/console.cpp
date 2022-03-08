#include "SerialCommand.h"
#include "console.h"
#include "dewcontroller_firmware.h"

static SerialCommand sCmd;


void console_help(const char* cmd) {
  Serial.println("Commands:");
  Serial.println(" set [channel] [value]    Set channel (1-4) to value (0-100), 100 is fully on");
  Serial.println(" get [channel]            Get a channel(1-4) value");
  Serial.println("");
  Serial.print("$ ");
}


void console_set() {
  char* argCh;
  char* argValue;
  uint8_t channel;
  uint8_t value;
  

  argCh = sCmd.next();
  argValue = sCmd.next();

  if (argCh == NULL || argValue == NULL) {
    Serial.println("ERROR: Missing set argument.");
    return;
  }
  
  channel = atoi(argCh);
  value = atoi(argValue);

  if (channel <= 0 || channel > 4){
    Serial.println("ERORR: Invalid channel.");
  }

  set_channel(channel, value);
  Serial.println("Set");

  Serial.print("$ ");
  
}


void console_get() {
  char* argCh;
  uint8_t channel;
  uint8_t value;

  argCh = sCmd.next();

  if (argCh == NULL) {
    Serial.println("ERROR: Missing get argument.");
    return;
  }

  channel = atoi(argCh);
  
  if (channel <= 0 || channel > 4){
    Serial.println("ERORR: Invalid channel.");
  }

  value = get_channel(channel);
  Serial.println(value);

  Serial.print("$ ");
  
}

void console_version() {
  Serial.print(dewversion);
  Serial.print("$ ");
}

void console_init() {
  sCmd.addCommand("set", console_set);
  sCmd.addCommand("get", console_get);
  sCmd.addCommand("version", console_version);
  sCmd.setDefaultHandler(console_help);
  Serial.print("$ ");
}


void console_read_serial() {
  sCmd.readSerial();
}
