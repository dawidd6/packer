qemu-system-arm \
    -M raspi2 \
    -kernel /media/$USER/system-boot/vmlinuz \
    -initrd /media/$USER/system-boot/initrd.img \
    -drive media=disk,format=raw,file=rpi2-ubuntu-20.04.img \
    -append "fsck.repair=yes net.ifnames=0 dwc_otg.lpm_enable=0 console=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 elevator=deadline rootwait" \
    -dtb /media/$USER/system-boot/bcm2710-rpi-3-b.dtb \
    -serial stdio \
    -display none
