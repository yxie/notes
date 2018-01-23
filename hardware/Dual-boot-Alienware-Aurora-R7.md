# Dual boot Ubuntu and Windows 10 for Alienware Aurora R7

# 1. Create a windows recovery usb

<http://topics-cdn.dell.com/pdf/alienware-aurora-r7-desktop_specifications_en-us.pdf>

# 2. Create a ubuntu boot usb

<https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows#0>

# 3. Change windows to AHCI mode

1. Right-click the Windows Start Menu. Choose **Command Prompt (Admin)**.
2. Type this command and press ENTER: **bcdedit /set {current} safeboot minimal**
3. Restart the computer and enter BIOS Setup (F12).
4. Change the SATA Operation mode to AHCI from either IDE or RAID (again, the language varies).
5. Save changes and exit Setup and Windows will automatically boot to Safe Mode. When logging in, use windows account password
6. Right-click the Windows Start Menu once more. Choose **Command Prompt (Admin)**.
7. Type this command and press ENTER: **bcdedit /deletevalue {current} safeboot**
8. Reboot once more and Windows will automatically start with AHCI drivers enabled.

# 4. Remove GPU from the computer

https://youtu.be/jqOEw9pcJOU

# 5. In windows, disk partition

Shrink the windows partition to split the HDD space in half.

<https://www.dell.com/support/article/us/en/19/sln301754/how-to-install-ubuntu-and-windows-8-or-10-as-a-dual-boot-on-your-dell-pc?lang=en#step13>

# 6. Disable secure boot in BIOS

F12 -> Boot -> Secure boot -> disabled

# 7. Install Ubuntu

Select “Install ubuntu alongside windows boot loader”

# 8. Install GPU drivers

sudo apt-get purge nvidia*

sudo add-apt-repositoryppa:graphics-drivers/ppa

sudo apt-get update && sudo apt-getinstall nvidia-384 nvidia-settings

 

# 8. Install GPU back to the computer