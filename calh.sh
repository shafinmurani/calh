#!/bin/bash
printf "This tool will install all necessary applications in your distro\n"
printf "Get ready to hack the planet!!\n"
# Waiting 5 seconds for the user to read the above text
sleep 5
#Downloading and installing the blackarch keyring
wget www.blackarch.org/strap.sh
chmod +x strap.sh
sudo ./strap.sh
#Downloading and installing sublime-text keyring
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
#Updating the system
sudo pacman -Syyu
#Installing all the necessary tools
sudo pacman -S wireshark-qt docker virtualbox nmap hydra nikto xclip sublist3r dirsearch gobuster dirb dirbuster tor figlet toilet torbrowser-launcher make radare2 gdb kdenlive metasploit metasploit-autopwn airgeddon hashcat crunch mdk4 reaver beef hostapd lighttpd bettercap ettercap zsh fish bully pixiewps dhcp ccze asleap john hostapd-wpe nftables mdk3 hcxtools hcxdumptool wireshark-cli brave stegsolve bpytop steghide stegcracker python3 python perl go terminator xterm compton plank exploitdb vim nano sublime-text
# Downloading and install oh-my-zsh framework
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#Downloading and installing Powerlevel10k theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
#Downloading Fura mono nerd fonts
sudo mkdir /usr/share/fonts/opentype
sudo wget -O '/usr/share/fonts/opentype/Fura Mono Regular Nerd Font Complete.otf' "https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/FiraMono/Regular/complete/Fura%20Mono%20Regular%20Nerd%20Font%20Complete.otf"
# Downloading and installing pluigns for syntax highlighting and auto-suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
cp .zshrc ~/
sudo rm -rf strap.sh
printf "\e[0;31mThere are some manual changes needed for this : \e[m\n"
printf "\e[0;31m	1. Access your terminal preferences and change the font to Fura Mono Nerd Font Bold/Italic/Regular\n\e[m\n"
printf "\e[0;31m 	2. Reboot your system\e[m\n"
printf "\n"
printf "\n"
printf "Your machine is ready.\n"
printf "HACK THE PLANET!!!\n"
