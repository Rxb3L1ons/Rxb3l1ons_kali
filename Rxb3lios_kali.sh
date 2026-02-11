#!/bin/bash
clear
echo -e "\e[1;35m[!] SISTEMA RXB3LIOS INICIADO...\e[0m"
sleep 2
echo -ne "\e[1;32mkali@kali:~$\e[0m termux-setup-storage\n"
termux-setup-storage && sleep 1.5
echo -ne "\e[1;32mkali@kali:~$\e[0m pkg install wget -y\n"
pkg install wget -y && sleep 1.5
echo -ne "\e[1;32mkali@kali:~$\e[0m wget -O install-nethunter-termux https://offs.ec/2MceZWr\n"
wget -O install-nethunter-termux https://offs.ec/2MceZWr && sleep 1.5
echo -ne "\e[1;32mkali@kali:~$\e[0m chmod +x install-nethunter-termux\n"
chmod +x install-nethunter-termux && sleep 1.5
echo -ne "\e[1;32mkali@kali:~$\e[0m ./install-nethunter-termux\n"
echo -e "\e[1;34m[*] Desplegando NetHunter en 3, 2, 1...\e[0m"
sleep 1
./install-nethunter-termux
