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

i="ceren"

while [[ $i == "ceren" ]]; do
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

echo "(1)  SYSTEM"
echo "(2)  BASEBOARD"
echo "(3)  CHASSIS"
echo "(4)  PROCESSOR"
echo "(5)  MEMORY"
echo "(6)  CACHE"
echo "(7)  CONNECTOR"
echo "(8)  SLOT"
echo "(9)  BIOS"
echo "(99) EXIT"

echo ""

echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read sys

### < 1 > ###

if [[ $sys == "1" || $sys == "SYSTEM" || $sys == "system" ]]; then
clear
  clear

  figlet SYSTEM

  sudo dmidecode -t system

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

### < 2 > ###

if [[ $sys == "2" || $sys == "BASEBOARD" || $sys == "baseboard" ]]; then
clear
  clear

  figlet BASEBOARD

  sudo dmidecode -t baseboard

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc


fi

### < 3 > ###

if [[ $sys == "3" || $sys == "CHASSIS" || $sys == "chassis" ]]; then
clear
  clear

  figlet CHASSIS

  dmidecode -t chassis

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc


fi

### < 4 > ###

if [[ $sys == "4" || $sys == "PROCESSOR" || $sys == "" ]]; then
clear
  clear

  figlet PROCESSOR

  dmidecode -t processor

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

### < 5 > ###

if [[ $sys == "5" || $sys == "MEMORY" || $sys == "memory" ]]; then
clear
  clear

  figlet MEMORY

  dmidecode -t memory

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

### < 6 > ###

if [[ $sys == "6" || $sys == "CACHE" || $sys == "cache" ]]; then
clear
  clear

  figlet CACHE

  dmidecode -t cache

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

### < 7 > ###

if [[ $sys == "7" || $sys == "CONNECTOR" || $sys == "connector" ]]; then
clear
  clear

  figlet CONNECTOR

  dmidecode -t connector

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"
  echo ""


  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read dokunma

fi

### < 8 > ###

if [[ $sys == "8" || $sys == "SLOT" || $sys == "slot" ]]; then
clear
  clear

  figlet SLOT

  dmidecode -t slot

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

### < 9 > ###

if [[ $sys == "9" || $sys == "BIOS" || $sys == "bios" ]]; then
clear
  clear

  figlet BIOS

  dmidecode -t bios

  echo ""

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

### < 99 > ###

if [[ $sys == "99" || $sys == "EXIT" || $sys == "exit" ]]; then
clear
  clear

  exit 1

fi
done
