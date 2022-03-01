#ifndef __DEWCONTROLLER_H
#define __DEWCONTROLLER_H

extern const char* dewversion;


/**
 * Get the channel value.
 * @param channel Which channel get get level for.
 * @return The channel's level, between 0-100.
 */
uint8_t get_channel(uint8_t channel);


/**
 * Set channel power level.
 * @param channel Which channel 1-4
 * @param value 0 off, 100 full
 */
void set_channel(uint8_t channel, uint8_t value);

#endif
