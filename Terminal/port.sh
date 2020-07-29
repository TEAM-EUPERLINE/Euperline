########################################## < COLORS > ##########################################

white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
transparent="\e[0m"

########################################## < MENU > ##########################################

i="omer"

while [[ $i == "omer" ]]; do

clear
  clear

echo "                    ."
echo "                   ..."
echo "                  ....."
echo "                 ......."
echo "                ........."
echo "                 ......."
echo "          .       .....       ."
echo "         ...       ...       ..."
echo "        .....       .       ....."
echo "       .......             ......."
echo "      .........           ........."
echo "     .........             ........."
echo -e "    .........       \e[34m.\e[0m       ........."
echo -e "   .........       \e[34m...\e[0m       ........."
echo -e "  .........       \e[34m.....\e[0m       ........."
echo -e " .........       \e[34m.......\e[0m       ........."
echo -e ".........       \e[34m.........\e[0m       ........."

echo -e "\e[34m-----------------------------------------\e[0m"

echo "(1)  Cihazımda ki Portları Ve Servisleri Listele"
echo -e "\e[34m<---------------------------------------------->\e[0m"

echo "(2)  Açık Portları Listele"
echo -e "\e[34m<---------------------------------------------->\e[0m"

echo "(3)  Portlar Ve Adresleri"
echo -e "\e[34m<---------------------------------------------->\e[0m"

echo "(99) EXIT"
echo -e "\e[34m<---------------------------------------------->\e[0m"


echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read pt

if [[ $pt == "1" ]]; then
clear
  clear

  sudo less /usr/share/nmap/nmap-services

fi

if [[ $pt == "2" ]]; then
clear
  clear

  sudo cat /etc/services

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

if [[ $pt == "3" ]]; then
clear
  clear

  sudo ss -tulpn

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

if [[ $pt == "99" || $pt == "EXIT" || $pt == "exit" ]]; then
clear
  clear

  exit 1

fi
done
