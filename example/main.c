#define NO_BIT_DEFINES
#include <pic14regs.h>
#include <stdint.h>

__code uint16_t __at (_CONFIG) __configword = _INTRC_OSC_NOCLKOUT & _WDT_OFF & _MCLRE_OFF;

void main(void) {
  CMCONbits.CM0 = 0;
  TRISIObits.TRISIO0 = 0;

  unsigned int i;

  while (1) {
    GPIObits.GPIO0 = 0;

    for (i = 0; i < 65535; i += 1);
    
    GPIObits.GPIO0 = 1;

    for (i = 0; i < 65535; i += 1);
  }
}

