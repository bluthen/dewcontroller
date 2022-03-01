#include <stdint.h>

#define HEATER_CH1 9
#define HEATER_CH2 6
#define HEATER_CH3 4
#define HEATER_CH4 3

const char* dewversion = "v1.0.0";

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(HEATER_CH1, OUTPUT);
  pinMode(HEATER_CH2, OUTPUT);
  pinMode(HEATER_CH3, OUTPUT);
  pinMode(HEATER_CH4, OUTPUT);
  analogWriteResolution(8);
  analogWriteFrequency(HEATER_CH1, 60);
  analogWriteFrequency(HEATER_CH2, 60);
  analogWriteFrequency(HEATER_CH3, 60);
  analogWriteFrequency(HEATER_CH4, 60);
  analogWrite(HEATER_CH1, 0);
  analogWrite(HEATER_CH2, 0);
  analogWrite(HEATER_CH3, 0);
  analogWrite(HEATER_CH4, 0);
  delay(500);
}


void set_channel(uint8_t channel, uint8_t value) {
  uint8_t v = (uint8_t)(255.0*(value/100.0) + 0.5);  
  if(channel == 1) {
    analogWrite(HEATER_CH1, v);
  } else if (channel == 2) {
    analogWrite(HEATER_CH2, v);
  } else if (channel == 3) {
    analogWrite(HEATER_CH3, v);
  } else if (channel == 4) {
    analogWrite(HEATER_CH4, v);
  }
}


uint8_t get_channel(uint8_t channel) {
  uint8_t v=0;
  if(channel == 1) {
    v = analogRead(HEATER_CH1);
  } else if (channel == 2) {
    v = analogRead(HEATER_CH2);
  } else if (channel == 3) {
    v = analogRead(HEATER_CH3);
  } else if (channel == 4) {
    v = analogRead(HEATER_CH4);
  }
  return (uint8_t)((100.0*(v/255.0))+0.5);
}


void loop() {
  // put your main code here, to run repeatedly:

}
