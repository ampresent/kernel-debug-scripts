## 解压镜像
`xorriso -osirrox on -indev install.iso -extract / ./tmp`
## 在 grub.cfg 中增加 console=ttyS0，以便让内核日志输出到串口中
## 把 grub.cfg 更新到镜像中
`xorriso -indev install.iso -outdev install-2.iso -boot_image any replay -update ./tmp/EFI/BOOT/grub.cfg /EFI/BOOT/grub.cfg -as mkisofs`
## 启动 qemu
`qemu-kvm -cpu host -m 30G --enable-kvm  test.img -cdrom ./install-2.iso -serial mon:stdio -nographic -net user,hostfwd=tcp::2222-:22 -net nic `
