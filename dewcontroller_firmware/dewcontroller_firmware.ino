#include <stdint.h>

#include "console.h"
#include "dewcontroller_firmware.h"

#define HEATER_CH1 9
#define HEATER_CH2 6
#define HEATER_CH3 4
#define HEATER_CH4 3
uint8_t ch1_v = 0;
uint8_t ch2_v = 0;
uint8_t ch3_v = 0;
uint8_t ch4_v = 0;

const char* dewversion = "v1.0.0";

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  delay(1000);
  Serial.send_now();
  pinMode(HEATER_CH1, OUTPUT);
  pinMode(HEATER_CH2, OUTPUT);
  pinMode(HEATER_CH3, OUTPUT);
  pinMode(HEATER_CH4, OUTPUT);
  analogWriteResolution(8);
  analogWriteFrequency(HEATER_CH1, 20);
  analogWriteFrequency(HEATER_CH2, 20);
  analogWriteFrequency(HEATER_CH3, 20);
  analogWriteFrequency(HEATER_CH4, 20);
  analogWrite(HEATER_CH1, ch1_v);
  analogWrite(HEATER_CH2, ch2_v);
  analogWrite(HEATER_CH3, ch3_v);
  analogWrite(HEATER_CH4, ch4_v);
  Serial.print("DEW HEATER ");
  Serial.println(dewversion);
  console_init();
  delay(500);
}


void set_channel(uint8_t channel, uint8_t value) {
  uint8_t v = (uint8_t)(255.0*(value/100.0) + 0.5);  
  if(channel == 1) {
    ch1_v = value;
    analogWrite(HEATER_CH1, v);
  } else if (channel == 2) {
    ch2_v = value;
    analogWrite(HEATER_CH2, v);
  } else if (channel == 3) {
    ch3_v = value;
    analogWrite(HEATER_CH3, v);
  } else if (channel == 4) {
    ch4_v = value;
    analogWrite(HEATER_CH4, v);
  }
}


uint8_t get_channel(uint8_t channel) {
  if(channel == 1) {
    return ch1_v;
  } else if (channel == 2) {
    return ch2_v;
  } else if (channel == 3) {
    return ch3_v;
  } else if (channel == 4) {
    return ch4_v;
  }
  return 0;
}


void loop() {
  // put your main code here, to run repeatedly:
  console_read_serial();
}
