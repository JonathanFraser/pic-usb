#include <stdio.h>
#include <usb.h>

#define FALSE   0
#define TRUE    1

#define SET_RA0  0x01
#define CLR_RA0  0x02

int main(void) {
    struct usb_bus *bus;
    struct usb_device *dev;
    usb_dev_handle *udev;
    int dev_found, ret;
    char buffer[8];
    
    usb_init();

    usb_find_busses();
    usb_find_devices();

    udev = NULL;
    dev_found = FALSE;
    for (bus = usb_get_busses(); bus && !dev_found; bus = bus->next) {
        for (dev = bus->devices; dev && !dev_found; dev = dev->next) {
            if ((dev->descriptor.idVendor == 0x04D8) && (dev->descriptor.idProduct == 0x0001)) {
                dev_found = TRUE;
                udev = usb_open(dev);
            }
        }
    }
    if (!dev_found) {
        printf("No matching device found...\n");
    }
    if (udev) {
        ret = usb_control_msg(udev, USB_TYPE_VENDOR | USB_RECIP_DEVICE, CLR_RA0, 0, 0, buffer, 0, 100);
        if (ret < 0) {
            printf("Unable to send vendor specific request, ret = %d...\n", ret);
        usb_close(udev);
        }
    }
}
