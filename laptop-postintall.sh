#!/bin/bash

# Setting up log file

echo "Setting up personal log file"
    touch ~/.log
    echo "################################" >> ~/.log
    echo "#### Min Super Seje Logfil! ####" >> ~/.log
    echo "################################" >> ~/.log
    echo -e "\n" >> ~/.log && date >> ~/.log && echo "Log file created and setup" >> ~/.log
echo "[Done]"

# Setting up bashrc

echo "Setting up personal bashrc file"
    rm -f ~/.bashrc
    touch ~/.bashrc
    echo "### ~/.bashrc ###" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "### Aliases ###" >> ~/.bashrc
    echo "alias ls='ls -lh --color=auto'" >> ~/.bashrc
    echo "alias grep='grep --color=auto'" >> ~/.bashrc
    echo "alias logit='echo -e \"\n\" >> ~/.log && date >> ~/.log && echo \$1 >> ~/.log'" >> ~/.bashrc
    echo "alias logot='cat ~/.log'" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "### Shell look and feel ###" >> ~/.bashrc
    echo 'export PS1="\[\e[0;34m\]\w \[\e[0;37m\][\[\e[0;32m\]$\[\e[0;37m\]] \[\e[0m\]"' >> ~/.bashrc
source ~/.bashrc
echo "[Done]"

# Setting up root bashrc

echo "Setting up root bashrc file"
    sudo -u root bash <<EOF
    rm -f /root/.bashrc
    touch /root/.bashrc 
    echo "### ~/.bashrc ###" >> /root/.bashrc
    echo "" >> /root/.bashrc
    echo "### Aliases ###" >> /root/.bashrc
    echo "alias ls='ls -lh --color=auto'" >> /root/.bashrc
    echo "alias grep='grep --color=auto'" >> /root/.bashrc
    echo "alias logit='echo -e \"\n\" >> ~/.log && date >> ~/.log && echo \$1 >> ~/.log'" >> /root/.bashrc
    echo "alias logot='cat ~/.log'" >> /root/.bashrc
    echo "" >> /root/.bashrc
    echo "### Shell look and feel ###" >> /root/.bashrc
    echo 'export PS1="\[\e[0;34m\]\w \[\e[0;37m\][\[\e[0;31m\]#\[\e[0;37m\]] \[\e[0m\]"' >> /root/.bashrc
    source /root/.bashrc
    exit
EOF
echo "[Done]"

# Installing base packages
sudo pacman -S dosfstools emacs qutebrowser bluedevil btop elinks fortune-mod kitty lolcat man-db nmap nano openssh otf-font-awesome partitionmanager wget

# Installing Hyprland
# sudo pacman -S hyprland hyprpaper hypridle hyprlock hyprcursor waybar wofi mako thunar sddm

# Download dot files
# download to /etc/xdg/waybar
# waybar config: sudo wget https://raw.githubusercontent.com/anistorian/arch-postinstall/refs/heads/main/waybar/config.jsonc -P /etc/xdg/waybar
# waybar style.css: sudo wget https://raw.githubusercontent.com/anistorian/arch-postinstall/refs/heads/main/waybar/style.css -P /etc/xdg/waybar


# hyprcursor themes?



