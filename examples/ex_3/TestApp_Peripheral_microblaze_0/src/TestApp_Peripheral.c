/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * Xilinx EDK 12.4 EDK_MS4.81d
 *
 * This file is a sample test application
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * XPS project when you run the "Generate Libraries" menu item
 * in XPS.
 *
 * Your XPS project directory is at:
 *    \\vboxsvr\real-pc\Trabajo\CUJAE\SPE\SPE-2023\examples\ex_3\
 */


// Located in: microblaze_0/include/xparameters.h
#include "xparameters.h"

#include "xil_cache.h"

#include "stdio.h"

#include "xintc.h"
#include "intc_header.h"
#include "xbasic_types.h"
#include "xgpio.h"
#include "gpio_header.h"
#include "xuartns550_l.h"
#include "uartns550_header.h"
#include "xuartns550.h"
#include "uartns550_intr_header.h"
#include "xtmrctr.h"
#include "tmrctr_header.h"
#include "tmrctr_intr_header.h"

//====================================================

int main (void) {


   static XIntc intc;

   /*
    * Enable and initialize cache
    */
   #if XPAR_MICROBLAZE_0_USE_ICACHE
      Xil_ICacheInvalidate();
      Xil_ICacheEnable();
   #endif

   #if XPAR_MICROBLAZE_0_USE_DCACHE
      Xil_DCacheInvalidate();
       Xil_DCacheEnable();
   #endif

   static XUartNs550 RS232_DCE_UartNs550;
   static XTmrCtr xps_timer_0_Timer;
   print("-- Entering main() --\r\n");


   {
      int status;
      
      print("\r\n Running IntcSelfTestExample() for xps_intc_0...\r\n");
      
      status = IntcSelfTestExample(XPAR_XPS_INTC_0_DEVICE_ID);
      
      if (status == 0) {
         print("IntcSelfTestExample PASSED\r\n");
      }
      else {
         print("IntcSelfTestExample FAILED\r\n");
      }
   } 
	
   {
       int Status;

       Status = IntcInterruptSetup(&intc, XPAR_XPS_INTC_0_DEVICE_ID);
       if (Status == 0) {
          print("Intc Interrupt Setup PASSED\r\n");
       } 
       else {
         print("Intc Interrupt Setup FAILED\r\n");
      } 
   }


   {
      u32 status;
      
      print("\r\nRunning GpioOutputExample() for LEDs_8Bit...\r\n");

      status = GpioOutputExample(XPAR_LEDS_8BIT_DEVICE_ID,8);
      
      if (status == 0) {
         print("GpioOutputExample PASSED.\r\n");
      }
      else {
         print("GpioOutputExample FAILED.\r\n");
      }
   }


   {
      u32 status;
      
      print("\r\nRunning GpioInputExample() for DIP_Switches_4Bit...\r\n");

      u32 DataRead;
      
      status = GpioInputExample(XPAR_DIP_SWITCHES_4BIT_DEVICE_ID, &DataRead);
      
      if (status == 0) {
         xil_printf("GpioInputExample PASSED. Read data:0x%X\r\n", DataRead);
      }
      else {
         print("GpioInputExample FAILED.\r\n");
      }
   }


   {
      u32 status;
      
      print("\r\nRunning GpioInputExample() for Buttons_3Bit...\r\n");

      u32 DataRead;
      
      status = GpioInputExample(XPAR_BUTTONS_3BIT_DEVICE_ID, &DataRead);
      
      if (status == 0) {
         xil_printf("GpioInputExample PASSED. Read data:0x%X\r\n", DataRead);
      }
      else {
         print("GpioInputExample FAILED.\r\n");
      }
   }


   {
      u32 status;
      
      print("\r\nRunning GpioOutputExample() for Character_LCD_2x16...\r\n");

      status = GpioOutputExample(XPAR_CHARACTER_LCD_2X16_DEVICE_ID,7);
      
      if (status == 0) {
         print("GpioOutputExample PASSED.\r\n");
      }
      else {
         print("GpioOutputExample FAILED.\r\n");
      }
   }


   {
      u32 status;
      
      print("\r\nRunning GpioInputExample() for Rotary_Encoder...\r\n");

      u32 DataRead;
      
      status = GpioInputExample(XPAR_ROTARY_ENCODER_DEVICE_ID, &DataRead);
      
      if (status == 0) {
         xil_printf("GpioInputExample PASSED. Read data:0x%X\r\n", DataRead);
      }
      else {
         print("GpioInputExample FAILED.\r\n");
      }
   }


   {
      XStatus status;

      print("\r\nRunning UartNs550SelfTestExample() for RS232_DCE...\r\n");
      status = UartNs550SelfTestExample(XPAR_RS232_DCE_DEVICE_ID);
      if (status == 0) {
         print("UartNs550SelfTestExample PASSED\r\n");
      }
      else {
         print("UartNs550SelfTestExample FAILED\r\n");
      }
   }
   {
      XStatus Status;

      print("\r\n Running Interrupt Test for RS232_DCE...\r\n");
      
      Status = UartNs550IntrExample(&intc, &RS232_DCE_UartNs550, \
                                  XPAR_RS232_DCE_DEVICE_ID, \
                                  XPAR_XPS_INTC_0_RS232_DCE_IP2INTC_IRPT_INTR);
	
      if (Status == 0) {
         print("UartNs550 Interrupt Test PASSED\r\n");
      } 
      else {
         print("UartNs550 Interrupt Test FAILED\r\n");
      }

   }


   {
      int status;
      
      print("\r\n Running TmrCtrSelfTestExample() for xps_timer_0...\r\n");
      
      status = TmrCtrSelfTestExample(XPAR_XPS_TIMER_0_DEVICE_ID, 0x0);
      
      if (status == 0) {
         print("TmrCtrSelfTestExample PASSED\r\n");
      }
      else {
         print("TmrCtrSelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for xps_timer_0...\r\n");
      
      Status = TmrCtrIntrExample(&intc, &xps_timer_0_Timer, \
                                 XPAR_XPS_TIMER_0_DEVICE_ID, \
                                 XPAR_XPS_INTC_0_XPS_TIMER_0_INTERRUPT_INTR, 0);
	
      if (Status == 0) {
         print("Timer Interrupt Test PASSED\r\n");
      } 
      else {
         print("Timer Interrupt Test FAILED\r\n");
      }

   }

   /*
    * Peripheral SelfTest will not be run for mdm_0
    * because it has been selected as the STDOUT device
    */

   /*
    * Disable cache and reinitialize it so that other
    * applications can be run with no problems
    */
   #if XPAR_MICROBLAZE_0_USE_DCACHE
      Xil_DCacheDisable();
      Xil_DCacheInvalidate();
   #endif

   #if XPAR_MICROBLAZE_0_USE_ICACHE
      Xil_ICacheDisable();
      Xil_ICacheInvalidate();
   #endif


   print("-- Exiting main() --\r\n");
   return 0;
}

