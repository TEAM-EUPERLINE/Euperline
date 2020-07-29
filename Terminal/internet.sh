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

########################################## < LOADING > ##########################################

i="internet"

while [[ $i="internet" ]]; do
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
echo -e "-\e[40;38;5;82m Euperline.com \e[30;48;5;82m RE4P-TEAM-CORE \e[0m -"
echo -e "\e[34m-----------------------------------------\e[0m"
echo -e "\e[5;34mTEAM RE4P CORE STANDART\e[0m"

echo -e "\e[34m-----------------------------------------\e[0m"

echo "(1)  VERİ HIZI "
echo -e "\e[34m<---------------------------------------------->\e[0m"

echo "(2)  VERİ GÖNDERİM HIZI"
echo -e "\e[34m<---------------------------------------------->\e[0m"

echo "(99) EXIT"
echo -e "\e[34m<---------------------------------------------->\e[0m"


echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read int


if [[ $int == "1" ]]; then
clear
  clear

echo "EĞER INTERFACE KARTININ İSMİNİ BİLMİOYRSAN (IFCONFIG) İLE KARTININ İSMİNE BAKABİLİRSİN !"
echo "INTERFACE KARTININ İSMİ :"

echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent""

read umg
xterm -hold -e bash re4psp.sh $umg

fi

if [[ $int == "2" ]]; then
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
echo -e "\e[34m------------------------------------------\e[0m"

curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -

sleep 2

echo ""

echo "Lütfen Geri Dönmek İçin Enter'a Basın"

echo ""

echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

if [[ $int == "99" ]]; then
clear
  clear

    exit 1

fi
done
