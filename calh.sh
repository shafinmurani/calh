#!/bin/bash
printf "This tool will install all necessary applications in your distro\n"
printf "Get ready to hack the planet!!\n"
sleep 5
wget www.blackarch.org/strap.sh
chmod +x strap.sh
sudo ./strap.sh
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
sudo pacman -Syyu
sudo pacman -S wireshark-qt docker virtualbox nmap hydra nikto xclip sublist3r dirsearch gobuster dirb dirbuster tor figlet toilet torbrowser-launcher make radare2 gdb kdenlive metasploit metasploit-autopwn airgeddon hashcat crunch mdk4 reaver beef hostapd lighttpd bettercap ettercap bully pixiewps dhcp ccze asleap john hostapd-wpe nftables mdk3 hcxtools hcxdumptool wireshark-cli brave stegsolve bpytop steghide stegcracker python3 python perl go terminator xterm compton plank exploitdb vim nano sublime-text
sudo rm -rf strap.sh
printf "\n"
printf "\n"
printf "Your machine is ready.\n"
printf "HACK THE PLANET!!!\n"
