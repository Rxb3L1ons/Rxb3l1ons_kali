#!/bin/bash
clear

# --- INTERFAZ DRAGÓN RXB3L1ONS ---
echo -e "\e[1;36m"
echo "             ___====-_  _--==___"
echo "       _--^^^  //      \\    ^^^--_"
echo "    _-^       // (    ) \\       ^-_"
echo "   -         //  |\^^/|  \\         -"
echo " _/         //   | (0) |   \\         \_"
echo " |         //    |  ||  |    \\         |"
echo " |        //     \  ||  /     \\        |"
echo " |       //       \ || /       \\       |"
echo " \_     //         \||/         \\     _/"
echo "   -   //           ||           \\   -"
echo "    \_//            ||            \\_/"
echo "      ||            ||             ||"
echo -e "\e[1;35m"
echo "  ____  __  ______ _____  _      _  ____  _   _  ____  "
echo " |  _ \ \ \/ / __ |____ | |    / |/ __ \| \ | |/ ___| "
echo " | |_) | \  /|  _ \ / / | |    | | |  | |  \| | \___ \ "
echo " |  _ <  /  \| |_) / /  | |___ | | |__| | |\  |  ___) |"
echo " |_| \_\/_/\_\____/ /___|_____||_|\____/|_| \_| |____/ "
echo -e "\e[1;36m"
echo "             SYSTEM ONLINE - BY RXB3L1ONS"
echo -e "\e[0m"

sleep 2

# --- INICIO DE COMANDOS ---
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
