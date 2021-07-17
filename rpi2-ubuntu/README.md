# rpi2-ubuntu

```sh
# Install deps
sudo apt install qemu-user-static kpartx
go get github.com/hashicorp/packer@v1.7.2
go get github.com/solo-io/packer-builder-arm-image@master
go get github.com/solo-io/packer-builder-arm-image/cmd/flasher@master

# Build image
sudo packer build template.json

# Flash image
sudo dd status=progress bs=4M if=rpi2-ubuntu-20.04.img of=/dev/sdb
sync
sudo cmp /dev/sdb rpi2-ubuntu-20.04.img
# or (this is easier)
sudo flasher -image rpi2-ubuntu-20.04.img -device /dev/sdb
```
