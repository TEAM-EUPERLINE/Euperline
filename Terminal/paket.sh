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

i="engin"

while [[ $i == "engin" ]]; do

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

echo "(1)  İNDİR"
echo "(2)  SNAP"
echo "(3)  SİL"
echo "(4)  GÜNCELLE"
echo "(5)  CLONE"
echo "(99) EXIT"

echo ""

echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read pkt

if [[ $pkt == "1" || $pkt == "İNDİR" || $pkt == "indir"  ]]; then
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
  echo -e "\e[31m------------------------------------------\e[0m"

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"İNDİRİLECEK PAKETİN ADI"$red"]-["$yellow"?"$red"]"$transparent"" & read ind

  sudo apt -y install $indsas

  echo ""

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

if [[ $pkt == "2" || $pkt == "SNAP" || $pkt == "snap" ]]; then
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
  echo -e "\e[31m------------------------------------------\e[0m"

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"İNDİRİLECEK SNAP ADI"$red"]-["$yellow"?"$red"]"$transparent"" & read snp

  echo ""

  sudo snap install $snp

  echo ""

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi


if [[ $pkt == "3" || $pkt == "SİL" || $pkt == "sil" ]]; then
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
  echo -e "\e[31m------------------------------------------\e[0m"

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"SİLİNECEK PAKETİN ADI"$red"]-["$yellow"?"$red"]"$transparent"" & read sl

  echo ""

  sudo apt-get remove $sl

  echo ""

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc



fi


if [[ $pkt == "4" || $pkt == "GÜNCELLE" || $pkt == "güncelle" ]]; then
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
  echo -e "\e[31m------------------------------------------\e[0m"

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"GÜNCELLENECEK PAKETİN ADI"$red"]-["$yellow"?"$red"]"$transparent"" & read gncl

  echo ""

  sudo apt update

  sudo apt get update

  echo ""

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi


if [[ $pkt == "5" || $pkt == "CLONE" || $pkt == "clone"  ]]; then
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
  echo -e "\e[31m------------------------------------------\e[0m"

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"CLONE'LANACAK ADRESS"$red"]-["$yellow"?"$red"]"$transparent"" & read cln

  echo ""

  sudo git clone $cln

  echo ""

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi


if [[ $pkt == "99" || $pkt == "EXIT" || $pkt == "exit" ]]; then
clear
  clear

  exit 1

fi
done
