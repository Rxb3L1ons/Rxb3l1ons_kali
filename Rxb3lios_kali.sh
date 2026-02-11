#!/bin/bash
clear
echo -e "\e[1;35m[!] SISTEMA RXB3L1ONS - VERSIÓN OFICIAL\e[0m"
echo -e "\e[1;34m[*] Instalando Kali NetHunter...\e[0m"
sleep 2

termux-setup-storage && sleep 1
pkg install wget -y
wget -O install-nethunter-termux https://offs.ec/2MceZWr
chmod +x install-nethunter-termux
./install-nethunter-termux
