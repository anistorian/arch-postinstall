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
    echo "[[ \$- != *i* ]] && return" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "### Aliases ###" >> ~/.bashrc
    echo "alias ls='ls -lh --color=auto'" >> ~/.bashrc
    echo "alias grep='grep --color=auto'" >> ~/.bashrc
    echo "alias logit='echo -e \"\n\" >> ~/.log && date >> ~/.log && echo \$1 >> ~/.log'" >> ~/.bashrc
    echo "alias logot='cat ~/.log'" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "### Shell look and feel ###" >> ~/.bashrc
    echo 'export PS1="\[\e[0;34m\]\w \[\e[0;37m\][\[\e[0;32m\]$\[\e[0;37m\]] \[\e[0m\]' >> ~/.bashrc
    source ~/.bashrc
echo "[Done]"

# Setting up root bashrc

echo "Setting up root bashrc file"
    su
    touch /root/.bashrc
    echo "### ~/.bashrc ###" >> /root/.bashrc
    echo "[[ \$- != *i* ]] && return" >> /root/.bashrc
    echo "" >> /root/.bashrc
    echo "### Aliases ###" >> /root/.bashrc
    echo "alias ls='ls -lh --color=auto'" >> /root/.bashrc
    echo "alias grep='grep --color=auto'" >> /root/.bashrc
    echo "alias logit='echo -e \"\n\" >> ~/.log && date >> ~/.log && echo \$1 >> ~/.log'" >> /root/.bashrc
    echo "alias logot='cat ~/.log'" >> /root/.bashrc
    echo "" >> /root/.bashrc
    echo "### Shell look and feel ###" >> /root/.bashrc
    echo 'export PS1="\[\e[0;34m\]\w \[\e[0;37m\][\[\e[0;31m\]#\[\e[0;37m\]] \[\e[0m\]' >> /root/.bashrc
    source /root/.bashrc
    exit
echo "[Done]"

# Removing bloat

echo "Removing unwanted software"
yes | sudo pacman -R vim
yes | sudo pacman -R firefox
yes | sudo pacman -R plasma-meta

# Marking packages from plasma-meta to be explicitly installed
yes | sudo pacman -D --asexplicit bluedevil  breeze-gtk  drkonqi  kde-gtk-config  kdeplasma-addons  kgamma  kinfocenter  krdp  kscreen  ksshaskpass  kwallet-pam  kwrited  ocean-sound-theme  oxygen  oxygen-sounds  plasma-browser-integration  plasma-desktop  plasma-disks  plasma-firewall  plasma-nm plasma-workspace-wallpapers  plasma-pa  plasma-systemmonitor  plasma-thunderbolt  plasma-vault  plasma-welcome  powerdevil  print-manager  sddm-kcm  xdg-desktop-portal-kde
yes | sudo pacman -R discover

# Marking packages from plasma-welcome to be explicitly installed
yes | sudo pacman -D --asexplicit gcc-libs  glibc  kcmutils  kconfig  kcoreaddons  kdbusaddons  ki18n  kio  kirigami  kirigami-addons  kjobwidgets  knewstuff kservice  ksvg  kuserfeedback  kwindowsystem  libplasma  plasma-nm  plasma5support  qt6-5compat  qt6-base  qt6-declarative
yes | sudo pacman -R plasma-welcome

echo "[Done]"

# Installing basic software

echo "Installing basic software"

yes | sudo pacman -S steam
yes | sudo pacman -S solaar
yes | sudo pacman -S openrgb
yes | sudo pacman -S btop
yes | sudo pacman -S yarn
yes | sudo pacman -S git

git -C ~/Downloads clone https://aur.archlinux.org/station-desktop.git
makepkg -sir --dir ~/Downloads/station-desktop/*.pkg.tar.zst
rm -rf ~/Downloads/station-desktop

git -C ~/Downloads clone https://aur.archlinux.org/xwayland-run-git.git
makepkg -sir --dir ~/Downloads/xwayland-run-git
rm -rf ~/Downloads/xwayland-run-git

git -C ~/Downloads clone https://aur.archlinux.org/librewolf-bin.git
makepkg -sir --dir ~/Downloads/librewolf-bin/*.pkg.tar.zst
rm -rf ~/Downloads/librewolf-bin

git -C ~/Downloads clone https://aur.archlinux.org/apple-music-desktop.git
makepkg -sir --dir ~/Downloads/apple-music-desktop/*.pkg.tar.zst
rm -rf ~/Downloads/apple-music-desktop

git -C ~/Downloads clone https://aur.archlinux.org/microsoft-edge-stable-bin.git
makepkg -sir --dir ~/Downloads/microsoft-edge-stable-bin/*.pkg.tar.zst
rm -rf ~/Downloads/microsoft-edge-stable-bin
