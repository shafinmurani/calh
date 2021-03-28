#!/bin/bash
wget www.blackarch.org/strap.sh
chmod +x strap.sh
sudo ./strap.sh
sudo pacman -S wireshark-qt docker virtualbox nmap hydra nikto xclip sublist3r dirsearch gobuster dirb dirbuster tor torbrowser-launcher make radare2 gbd kdenlive metasploit metasploit-autopwn airgeddon hashcat crunch mdk4 reaver beef hostapd lighttpd bettercap ettercap bully pixiewps dhcp ccze asleap john hostapd-wpe nftables mdk3 hcxtools hcxdumptool wireshark-cli brave exiftool stegsolve bpytop steghide stegcracker python3 python perl go 
sudo rm -rf strap.sh
printf "\n"
printf "\n"
printf "Your machine is ready.\n"
printf "HACK THE PLANET!!!"