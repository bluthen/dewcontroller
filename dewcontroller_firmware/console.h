#ifndef __CONSOLE_H
#define __CONSOLE_H

#include "SerialCommand.h"

/**
 * Initialize console.
 */
void console_init(void);

/**
 * Try reading from serial and see if there is anything in the
 * buffer. Processes command if valid.
 */
void console_read_serial(void);

#endif
