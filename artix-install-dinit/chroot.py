#!/usr/bin/env python3
import os
import time

os.system("clear")

os.system("ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime")
os.system("hwclock --systohc")

os.system("clear")

#locale
locale = input("Select locale [en/tr]: ")
if locale == 'en':
    os.system("echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen")
    os.system("locale-gen")
    os.system("clear")
    os.system("touch /etc/locale.conf")
    os.system("echo 'LANG=en_US.UTF-8' >> /etc/locale.conf")
    os.system("clear")
elif locale == 'tr':
    os.system("echo 'tr_TR.UTF-8 UTF-8' >> /etc/locale.gen")
    os.system("locale-gen")
    os.system("clear")
    os.system("touch /etc/locale.conf")
    os.system("echo 'LANG=tr_TR.UTF-8' >> /etc/locale.conf")
    os.system("clear")

os.system("clear")

#local machine
hostname = input("Hostname: ")
os.system("echo " f"{hostname} " ">> /etc/hostname")

os.system("echo '127.0.0.1       localhost' >> /etc/hosts")
os.system("echo '::1             localhost' >> /etc/hosts")
os.system("echo '127.0.1.1       '" f"{hostname}"".localdomain " f"{hostname}" " >> /etc/hosts")
os.system("clear")

#root user password
print("Root user password: ")
os.system("passwd")
os.system("clear")

#packages
os.system("pacman -Sy networkmanager networkmanager-dinit ntp-dinit")
os.system("clear")
print('''
After restarting the computer, enter the command "sudo dinitctl enable NetworkManager and enable ntpd too"
''')
time.sleep(6)
os.system("clear")

os.system("pacman -S xf86-input-libinput")
os.system("clear")

os.system("pacman -S ntfs-3g")
os.system("clear")
time.sleep(2)

#grub
os.system("pacman -S grub os-prober")
os.system("clear")

os.system("grub-install --recheck /dev/sda")
os.system("grub-mkconfig -o /boot/grub/grub.cfg")
time.sleep(2)
os.system("clear")

#useradd
username = input("Username: ")
os.system("useradd -m -g users -G wheel,storage,power,audio,video,network -s /bin/bash " f"{username}")
print("Normal user password: ")
os.system("passwd " f"{username}")
os.system("EDITOR=nano visudo")
os.system("clear")
