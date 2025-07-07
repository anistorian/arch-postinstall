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
    source ~./bashrc
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
