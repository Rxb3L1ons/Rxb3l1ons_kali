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

# --- PREPARACIÓN SILENCIOSA ---
termux-setup-storage
pkg install wget -y > /dev/null 2>&1
if [ ! -f "install-nethunter-termux" ]; then
    wget -O install-nethunter-termux https://offs.ec/2MceZWr > /dev/null 2>&1
    chmod +x install-nethunter-termux
fi

# --- TU MENÚ DE SELECCIÓN PROPIO ---
echo -e "\n\e[1;34m[*] SELECCIONA LA VERSIÓN DE KALI PARA INSTALAR:\e[0m"
echo -e "\e[1;32m[1]\e[0m NetHunter ARM64 (\e[1;33mFull\e[0m)"
echo -e "\e[1;32m[2]\e[0m NetHunter ARM64 (\e[1;33mMinimal\e[0m)"
echo -e "\e[1;32m[3]\e[0m NetHunter ARM64 (\e[1;33mNano\e[0m)"
echo -ne "\n\e[1;35mRxb3l1ons-System >> \e[0m"
read opcion

case $opcion in
    1) export IMG_TYPE="full" ;;
    2) export IMG_TYPE="minimal" ;;
    3) export IMG_TYPE="nano" ;;
    *) echo -e "\e[1;31mOpción no válida.\e[0m"; exit ;;
esac

echo -e "\n\e[1;34m[*] Iniciando descarga de la imagen $IMG_TYPE bajo el sistema Rxb3l1ons...\e[0m"
sleep 2

# Ejecuta el instalador saltándose su propio menú y banner
./install-nethunter-termux <<ESEOF
$opcion
ESEOF
