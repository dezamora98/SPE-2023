#include "xparameters.h"
#include "xgpio.h"
#include "xutil.h"
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>

#define delay() for(i = 0;i != XPAR_CPU_DPLB_FREQ_HZ/48;++i)

int main(void)
{
    XGpio leds;

    XGpio_Initialize(&leds,XPAR_LEDS_8BIT_DEVICE_ID);

    uint32_t i;

    while (true)
    {
    	print("hola mundo \r\n");
        delay();
        XGpio_DiscreteWrite(&leds,1,0x00000000);
        delay();
        XGpio_DiscreteWrite(&leds,1,0xFFFFFFFF);
        /* code */
    }

    return 0;
}
