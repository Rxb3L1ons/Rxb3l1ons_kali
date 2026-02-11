#!/bin/bash
# Script Personalizado por Rxb3l1ons
clear

# --- TU BANNER PERSONALIZADO (EL DRAGÓN) ---
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

# --- PREPARACIÓN SILENCIOSA Y RÁPIDA ---
echo -e "\e[1;34m[*] Preparando el entorno...\e[0m"
termux-setup-storage > /dev/null 2>&1
pkg install wget -y > /dev/null 2>&1
if [ ! -f "install-nethunter-termux" ]; then
    wget -O install-nethunter-termux https://offs.ec/2MceZWr > /dev/null 2>&1
    chmod +x install-nethunter-termux
fi
echo -e "\e[1;32m[*] Entorno listo.\e[0m\n"

# --- TU MENÚ DE SELECCIÓN FUTURISTA ---
echo -e "\e[1;37m"
echo "╔═════════════════════════════════════════════════╗"
echo "║             \e[1;33m[ SELECCIÓN DE IMAGEN KALI ]\e[1;37m              ║"
echo "╠═════════════════════════════════════════════════╣"
echo "║ \e[1;32m[1]\e[1;37m █  \e[1;33mNetHunter ARM64 (FULL)\e[1;37m         █       ║"
echo "║ \e[1;32m[2]\e[1;37m █  \e[1;33mNetHunter ARM64 (MINIMAL)\e[1;37m      █       ║"
echo "║ \e[1;32m[3]\e[1;37m █  \e[1;33mNetHunter ARM64 (NANO)\e[1;37m         █       ║"
echo "╚═════════════════════════════════════════════════╝"
echo -ne "\e[1;35mRxb3l1ons-System >> \e[0m"
read opcion

case $opcion in
    1) export IMG_TYPE="full" ;;
    2) export IMG_TYPE="minimal" ;;
    3) export IMG_TYPE="nano" ;;
    *) echo -e "\e[1;31mOpción no válida. Saliendo.\e[0m"; exit ;;
esac

echo -e "\n\e[1;34m[*] Iniciando descarga de la imagen $IMG_TYPE bajo el sistema Rxb3l1ons...\e[0m"
sleep 2

# Ejecuta el instalador saltándose su propio menú y banner
./install-nethunter-termux <<ESEOF
$opcion
ESEOF

# --- BANNER FINAL FUTURISTA DE INSTALACIÓN COMPLETADA ---
echo -e "\n\e[1;32m"
echo "╔═════════════════════════════════════════════════╗"
echo "║            \e[1;33mINSTALACIÓN KALI COMPLETADA\e[1;32m            ║"
echo "║             \e[1;33mPOR EL SISTEMA RXB3L1ONS\e[1;32m              ║"
echo "╚═════════════════════════════════════════════════╝"
echo -e "\e[0m\n"
echo -e "\e[1;35m[!] ¡Kali NetHunter listo para ser usado, comandante Rxb3l1ons!\e[0m"
