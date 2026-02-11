#!/bin/bash
clear

# Definición de colores neón
CYAN='\e[1;36m'
PURPLE='\e[1;35m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'

# --- BANNER PRINCIPAL RXB3L1ONS ---
echo -e "${CYAN}"
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
echo -e "${PURPLE}"
echo "  ____  __  ______ _____  _      _  ____  "
echo " |  _ \ \ \/ / __ |____ | |    / |/ __ \ "
echo " | |_) | \  /|  _ \ / / | |    | | |  | |"
echo " |  _ <  /  \| |_) / /  | |___ | | |__| |"
echo " |_| \_\/_/\_\____/ /___|_____||_|\____/ "
echo -e "${WHITE}            SYSTEM ONLINE${NC}"
echo ""

# --- INICIANDO SISTEMA ---
echo -e "${PURPLE}[!] Iniciando sistema Rxb3l1ons...${NC}"
sleep 1.5

# Preparación silenciosa (sin que se vea el proceso)
termux-setup-storage > /dev/null 2>&1
pkg install wget -y > /dev/null 2>&1
if [ ! -f "install-nethunter-termux" ]; then
    wget -O install-nethunter-termux https://offs.ec/2MceZWr > /dev/null 2>&1
    chmod +x install-nethunter-termux
fi

# --- CUADRO DE SELECCIÓN FUTURISTA (IDÉNTICO A LA IMAGEN) ---
echo -e "${CYAN}  .------------------------------------------."
echo -e "  | ${YELLOW}[ SELECCIÓN DE IMAGEN KALI ]${CYAN}             |"
echo -e "  |                                          |"
echo -e "  | ${GREEN}[1] 📂 NetHunter ARM64 (FULL)${CYAN}            |"
echo -e "  | ${GREEN}[2] 📂 NetHunter ARM64 (MINIMAL)${CYAN}         |"
echo -e "  | ${YELLOW}[3] 📂 NetHunter ARM64 (NANO)${CYAN}            |"
echo -e "  |                                          |"
echo -e "  | ${PURPLE}       Rxb3l1ons-System >>${CYAN}               |"
echo -e "  '------------------------------------------'${NC}"
echo -ne "${PURPLE}  >> ${NC}"
read opcion

# Validación y ejecución silenciosa del motor de Kali
case $opcion in
    1) export IMG_TYPE="full" ;;
    2) export IMG_TYPE="minimal" ;;
    3) export IMG_TYPE="nano" ;;
    *) echo -e "${PURPLE}Error: Selección inválida.${NC}"; exit ;;
esac

echo -e "\n${CYAN}[*] Desplegando motor de Kali bajo protocolo Rxb3l1ons...${NC}"
sleep 2

# Ejecuta el instalador real pasándole la opción automáticamente 
# para que NO aparezca el banner azul de Kali.
./install-nethunter-termux <<ESEOF
$opcion
ESEOF
