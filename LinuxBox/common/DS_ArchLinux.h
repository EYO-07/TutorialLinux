/// BEGIN 

# Inventory : Installation and Command-Line Tools { Installation Media, Arch Linux, MBR, Wi-Fi }
# 0. iwctl
# ... device list
# ... station <sua_interface> scan 
# ... station <sua_interface> get-networks   
# ... station <sua_interface> connect <NOME_DA_REDE> 
# ... exit
# ... ping archlinux.org 
# 1. localectl list-keymaps
# ... loadkeys br-abnt 
# 2. timedatectl set-ntp true ; update time 
# 3. mount /dev/sdXY /mnt ; mount partition 
# 4. swapon /dev/sdXZ ; 
# 5. pacstrap /mnt base linux linux-firmware intel-ucode amd-ucode sudo nano networkmanager grub ; install base system 
# 6. genfstab -U /mnt >> /mnt/etc/fstab ; generate fstab 
# 7. arch-chroot /mnt ; rooting to /mnt 
# 8. echo "en_US.UTF-8 UTF-8" > /etc/locale.gen ; locale, time, keyboard
# ... locale-gen
# ... echo "LANG=en_US.UTF-8" > /etc/locale.conf
# ... ln -sf /usr/share/zoneinfo/Region/City /etc/localtime
# ... hwclock --systohc 
# ... localectl list-keymaps | grep br 
# ... echo "KEYMAP=br-abnt" > /etc/vconsole.conf
# 9. echo "archMinimal" > /etc/hostname
# 10. nano /etc/hosts 
# 127.0.0.1   localhost
# ::1         localhost
# 127.0.1.1   archMinimal.localdomain archMinimal
# 11. grub-install --target=i386-pc /dev/sdX
# ... grub-mkconfig -o /boot/grub/grub.cfg   
# 12. systemctl enable NetworkManager   
# 13. passwd
# ... useradd -m -G wheel username
# ... passwd username
# ... EDITOR=nano visudo # Uncomment: %wheel ALL=(ALL) ALL   
# 14. mkinitcpio -P   
# 15. exit
# 16. umount -R /mnt
# 17. reboot
.
Dialetic : Minimal Installation { MBR Partition, Arch Linux } 
* How to install minimal installation of arch linux ? 
** How to use pre-formated partitions by gparted to install arch linux ? 
* Arch Linux Installation Media
** can the arch-chroot be right after the mounting ? no
** How to connect to wifi using iwctl ? 

# Issues in broadcom wifi 
# 1. press tab and add to end : modprobe.blacklist=bcma,brcmsmac,b43,ssb   
# ... maybe a subset, you should test it
# 2. modprobe wl 
# 3. ip link 

# Issue with sharing connection - not this !
# sudo systemctl stop dnsmasq 
# sudo systemctl disable dnsmasq   
# 

# regulatory.db issue 
# sudo nano /etc/conf.d/wireless-regdom   
# iw reg get
# sudo iw reg set BR

# config X11 
# cp /etc/X11/xinit/xinitrc ~/.xinitrc 
# xrdb -merge ~/.Xresources   
# xrdb -query   





















/// END 