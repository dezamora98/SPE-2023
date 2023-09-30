#include "xparameters.h"
#include "xgpio.h"
#include <stdint.h>
#include <stdbool.h>

#define delay() for(i = 0;i != XPAR_CPU_DPLB_FREQ_HZ/48;++i)

void ex(int* i)
{
	++(*i);
}

void ex_2(XGpio* leds)
{
	int i = 0;
    
	while(i != XPAR_CPU_DPLB_FREQ_HZ/48)
	{     
        ex(&i);   
	}
    uint32_t data;
    data = XGpio_DiscreteRead(leds,1);
    XGpio_DiscreteWrite(leds,1,~data);
}

int main(void)
{
    XGpio leds;

    XGpio_Initialize(&leds,XPAR_LEDS_8BIT_DEVICE_ID);

    uint32_t i;

    while (true)
    {
    	print("Pingaaaaaaa\n");
        ex_2(&leds);
        /* code */
    }

    return 0;
}
