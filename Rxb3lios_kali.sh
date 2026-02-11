#!/bin/bash
clear

# --- COLOR PALETTE ---
CYAN='\e[1;36m'
PURPLE='\e[1;35m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'

# --- DRAGON ART (TOP) ---
echo -e "${CYAN}"
echo "           _,.             _   "
echo "         ,;~ \          ,-' )  "
echo "        j    |        ,'  ,'   "
echo "       j     |      ,'  ,'     "
echo "       j    /      /  ,'       "
echo "       j    L____,'  /         "
echo "       j             L         "
echo "       j             |         "
echo "      j    _----_    j         "
echo "     j    /      \   j         "
echo "   _j____/        \__j_        "
echo -e "${PURPLE}"
echo "  ____  __  ______ _____  _      _  ____  "
echo " |  _ \ \ \/ / __ |____ | |    / |/ __ \ "
echo " | |_) | \  /|  _ \ / / | |    | | |  | |"
echo " |  _ <  /  \| |_) / /  | |___ | | |__| |"
echo " |_| \_\/_/\_\____/ /___|_____||_|\____/ "
echo -e "${WHITE}          SYSTEM ONLINE${NC}"
echo ""

# --- SELECTION BOX (IDENTICAL TO IMAGE) ---
echo -e "${CYAN} .---------------------------------------."
echo -e " | ${YELLOW}[ SELECCIÓN DE IMAGEN KALI ]${CYAN}           |"
echo -e " |                                       |"
echo -e " | ${GREEN}[1] 📂 NetHunter ARM64 (FULL)${CYAN}          |"
echo -e " | ${GREEN}[2] 📂 NetHunter ARM64 (MINIMAL)${CYAN}       |"
echo -e " | ${YELLOW}[3] 📂 NetHunter ARM64 (NANO)${CYAN}          |"
echo -e " '---------------------------------------'${NC}"
echo ""
echo -ne "${PURPLE}Rxb3l1ons-System >> ${NC}"
read opcion

# --- LOGIC ---
case $opcion in
    1) export IMG_TYPE="full" ;;
    2) export IMG_TYPE="minimal" ;;
    3) export IMG_TYPE="nano" ;;
    *) echo -e "${PURPLE}Saliendo...${NC}"; exit ;;
esac

# Descarga silenciosa del instalador real
wget -O install-nethunter-termux https://offs.ec/2MceZWr > /dev/null 2>&1
chmod +x install-nethunter-termux

# Ejecutar instalador original
./install-nethunter-termux <<ESEOF
$opcion
ESEOF
