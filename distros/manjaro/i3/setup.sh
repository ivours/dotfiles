#!/bin/bash

sudo pacman -S arandr
sudo pacman -S yay
sudo pacman -S net-tools
sudo pacman -S code
sudo pacman -S termite
yay -S xkb-switch
yay -S oomox
yay -S spotify

# Install betterlockscreen
yay -S betterlockscreen
# rm -rf ~/.cache/i3lock
# betterlockscreen -u $pathToWallpaper

# Remove ALSA and install PulseAudio
install_pulse

# Install sublime text
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && \
sudo pacman-key --add sublimehq-pub.gpg && \
sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
sudo pacman -Syu sublime-text

# Synchronize time with remote NTP server
sudo timedatectl set-ntp true

# --------------------

# Devops tools
sudo pacman -S aws-cli
sudo pacman -S kubectx
sudo pacman -S kubectl

# KOPS
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops


