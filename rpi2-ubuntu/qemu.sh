emu-system-arm \
              -kernel ~/vmlinuz-5.4.0-1028-raspi \
              -initrd ~/initrd.img-5.4.0-1028-raspi \
              -append "console=ttyAMA0,115200 root=/dev/mmcblk0p2" \
              -no-reboot \
              -display none \
              -m 1024 \
              -M raspi2 \
              -drive format=raw,file=$HOME/github/dawidd6/packer/rpi2-ubuntu/ubuntu-20.04.2-preinstalled-server-armhf+raspi.img \
              -serial stdio \
              -dtb ~/bcm2709-rpi-2-b.dtb
