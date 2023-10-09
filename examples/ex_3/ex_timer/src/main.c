#include "xparameters.h"
#include "xil_cache.h"
#include "xintc.h"
#include "stdio.h"
#include "stdbool.h"
#include "stdint.h"
#include "xil_exception.h"
#include "xuartns550.h"
#include "string.h"

void UartNs550_init(XUartNs550 *uart);

int main(void)
{
    Xil_ICacheInvalidate();
    Xil_ICacheEnable();

    Xil_DCacheEnable();
    Xil_DCacheInvalidate();

    const char text[] = "hola mundo\n";

    XUartNs550 uart;

    UartNs550_init(&uart);
    xil_printf("-> UartNs550 configurado");     // Print en UartLite mdm

    while (true)
    {
        XUartNs550_Send(&uart, text, strlen(text));
        while ((bool)XUartNs550_IsSending(&uart));
    }

    return 0;
}

void UartNs550_init(XUartNs550 *uart)
{
    XUartNs550Format format = {
        .BaudRate = 9600,
        .DataBits = XUN_FORMAT_8_BITS,
        .Parity = XUN_FORMAT_NO_PARITY,
        .StopBits = XUN_FORMAT_NO_PARITY,
    };

    XUartNs550_Initialize(uart, XPAR_UARTNS550_0_DEVICE_ID);
    XUartNs550_SetDataFormat(uart, &format);
}