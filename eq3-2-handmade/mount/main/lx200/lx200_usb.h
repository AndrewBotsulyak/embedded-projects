#ifndef LX200_USB_H
#define LX200_USB_H

#include "esp_err.h"

/*
    Канал LX200 через разъём USB платы (встроенный USB-Serial-JTAG, GPIO19/20).
    На Mac порт виден как /dev/cu.usbmodem...; скорость в терминале/Stellarium любая —
    это USB, а не настоящий UART.

    Разъём COM (UART0) остаётся под прошивку и логи. Копия логов на USB выключена
    (CONFIG_ESP_CONSOLE_SECONDARY_NONE в sdkconfig.defaults), иначе она смешалась бы с ответами.

    При перезагрузке ESP порт usbmodem на секунду пропадает — терминал или Stellarium
    нужно переподключить.

    Вызывать после motion_start(): команды кладутся в очередь motion_task.
*/
esp_err_t lx200_usb_start();

#endif
