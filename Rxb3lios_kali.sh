#!/bin/bash
clear

# Colores Neón
CYAN='\e[1;36m'
PURPLE='\e[1;35m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
NC='\e[0m'

# --- INTERFAZ RXB3L1ONS ---
echo -e "${CYAN}"
echo "             ___====-_  _--==___"
echo "       _--^^^  //      \\    ^^^--_"
echo "    _-^       // (    ) \\       ^-_"
echo "   -         //  |\^^/|  \\         -"
echo " _/         //   | (0) |   \\         \_"
echo -e "${PURPLE}"
echo "  ____  __  ______ _____  _      _  ____  "
echo " |  _ \ \ \/ / __ |____ | |    / |/ __ \ "
echo " | |_) | \  /|  _ \ / / | |    | | |  | |"
echo " |  _ <  /  \| |_) / /  | |___ | | |__| |"
echo " |_| \_\/_/\_\____/ /___|_____||_|\____/ "
echo -e "${CYAN}             SYSTEM ONLINE${NC}"
echo ""

echo -e "${PURPLE}[!] Iniciando sistema Rxb3l1ons...${NC}"
sleep 2

# Cuadro de selección limpio (Idéntico a tu diseño)
echo -e "${CYAN} .---------------------------------------."
echo -e " | ${YELLOW}[ SELECCIÓN DE IMAGEN KALI ]${CYAN}           |"
echo -e " |                                       |"
echo -e " | ${GREEN}[1] 📂 NetHunter ARM64 (FULL)${CYAN}          |"
echo -e " | ${GREEN}[2] 📂 NetHunter ARM64 (MINIMAL)${CYAN}       |"
echo -e " | ${YELLOW}[3] 📂 NetHunter ARM64 (NANO)${CYAN}          |"
echo -e " '---------------------------------------'${NC}"
echo -ne "${PURPLE}Rxb3l1ons-System >> ${NC}"
read opcion

# Motor de instalación silencioso
case $opcion in
    1) opt="1" ;;
    2) opt="2" ;;
    3) opt="3" ;;
    *) exit ;;
esac

wget -O install-nethunter-termux https://offs.ec/2MceZWr > /dev/null 2>&1
chmod +x install-nethunter-termux

# Esto evita que salga el banner azul de la imagen 55460.jpg
./install-nethunter-termux <<ESEOF
$opt
ESEOF

# Auto-instalación de SQLMAP al terminar
echo -e "\n${PURPLE}[*] Configurando herramientas adicionales (SQLMAP)...${NC}"
nh -e "sudo apt update && sudo apt install sqlmap -y"

echo -e "\n${GREEN}[✔] SISTEMA RXB3L1ONS LISTO PARA OPERAR${NC}"
