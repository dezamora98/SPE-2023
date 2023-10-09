/*
 * main.c
 *
 *  Created on: Oct 9, 2023
 *      Author: Inc. Daniel E. Zamora
 * 		Mail: dezamora98@gmial.com
 */
#include "xparameters.h"
#include "xgpio.h"
#include "xintc.h"
#include "xil_exception.h"
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>

/**
 * @brief callback function for button interrupt on the development board (south button is for rst)
 * 
 * @param InstancePtr GPIO ptr
 */
void button_ISR(void *InstancePtr);

/**
 * @brief 
 * 
 * @param IntCtr 
 * @param button 
 */
void SetupInterruptSystem(XIntc *IntCtr, XGpio *button);

int main(void)
{
	XGpio button;
	XIntc IntCtr;
	uint32_t status = XST_SUCCESS;

	microblaze_enable_dcache();
	microblaze_enable_icache();

	status = XGpio_Initialize(&button, XPAR_BUTTONS_3BIT_DEVICE_ID);
	if (status == XST_SUCCESS)
		xil_printf("PASS -> BUTTON init\n");


	SetupInterruptSystem(&IntCtr, &button);

	while (true)
		;
	return 0;
}

void button_ISR(void *InstancePtr)
{
	XGpio *GpioPtr = (XGpio *)InstancePtr;
	xil_printf("Button interrupt-> Status = %x\n", XGpio_DiscreteRead(GpioPtr, 1));
	XGpio_InterruptClear(GpioPtr, ~0);
}

void SetupInterruptSystem(XIntc *IntCtr, XGpio *button)
{
	uint32_t status = XST_SUCCESS;
	/**
	 * @brief Construct a new xintc initialize object
	 *
	 */
	status = XIntc_Initialize(IntCtr, XPAR_INTC_0_DEVICE_ID);
	if (status == XST_SUCCESS || status == XST_IS_STARTED)
		xil_printf("PASS -> IntCtr init\n");
	else
	{
		xil_printf("ERROR -> IntCtr init\n");
		return;
	}
	/**
	 * @brief Construct a new xintc connect object
	 *
	 */
	status = XIntc_Connect(IntCtr, XPAR_INTC_0_GPIO_0_VEC_ID, button_ISR, button);
	if (status == XST_SUCCESS)
		xil_printf("PASS -> IntCtr connect IntButton\n");
	else
	{
		xil_printf("ERROR -> IntCtr connect IntButton\n");
		return;
	}

	XIntc_Enable(IntCtr, XPAR_INTC_0_GPIO_0_VEC_ID);

	status = XIntc_Start(IntCtr, XIN_REAL_MODE);
	if (status == XST_SUCCESS)
		xil_printf("PASS -> IntCtr start\n");
	else
	{
		xil_printf("ERROR -> IntCtr start\n");
		return;
	}

	XGpio_InterruptEnable(button, XGPIO_IR_CH1_MASK);
	XGpio_InterruptGlobalEnable(button);

	microblaze_enable_interrupts();
}