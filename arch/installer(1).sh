#arch instructions for vm, the names may change for real mahine

#tab for network name
ipconfig "enp0s5" up
ping www.google.com

fdisk -l

#cfdisk is much better, but here use fdisk for atomation
cfdisk /dev/sda
#dos table 
#sda1： boot 512mb
#sda2: swap 8g
#sda3: remainding free space

mkfs -t vfat /dev/sda1
mkswap /dev/sda2
mkfs -t ext4  /dev/sda3

mount /dev/sda3  /mnt
mkdir /mnt/boot
mount  /dev/sda1  /mnt/boot

pacstrap /mnt  base base-devel 
genfstab -U /mnt >> /mnt/etc/fstab 
#check if wrong
vim /mnt/etc/fstab

ln -sf /usr/share/zoneinfo/Asia/Hong_Kong  /etc/localtime 	
arch-chroot /mnt
hwclock --systohc

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen;
echo "zh_TW.UTF-8 UTF-8" >> /etc/locale.gen;
echo "LANG=en_US.UTF-8" > /etc/locale.conf;

echo "alan_tsui" > /etc/hostname

pacman -S grub
pacman -S os-prober


grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
grub-mkconfig -o /boot/grub/grub.cfg
	
pacman -S net-tools;
pacman -S wireless_tools;
pacman -S dhclient;
pacman -S wpa_supplicant;

systemctl enable dhcpd.service
#nameserver 8.8.8.8
#nameserver 8.8.4.4
vim /etc/resolv.conf
exit
umount -R /mnt
reboot
