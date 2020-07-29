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

i="neymo"

while [[ $i == "neymo" ]]; do

yer=$(pwd)

cd $list

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
echo -e "\e[34mEN SON ARANAN DİZİN : $list\e[0m"
echo -e "\e[31m------------------------------------------\e[0m"
echo -e "\e[34mSON YAPILAN İŞLEM: $nm\e[0m"
echo -e "\e[31m------------------------------------------\e[0m"
echo -e "\e[34mŞUAN NERDESİN: $yer \e[0m"
echo -e "\e[31m------------------------------------------\e[0m"
echo -e "\e[34mHANGİ DİZİNİ LİSTELEYİM ?\e[0m"
echo -e "\e[31m------------------------------------------\e[0m"

echo "(1)  DOSYA AÇMAK"
echo "(2)  DOSYA OLUŞTURMAK"
echo "(3)  DOSYA SİLMEK"
echo "(4)  DOSYANIN İÇERĞİNİ GÖRÜNTÜLEMEK"
echo "(99) EXIT"

echo ""

echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read dzn

### < 1 > ###

if [[ $dzn == "1" ]]; then
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

  echo "(1) PYTHON"
  echo "(2) BASH"
  echo "(3) JAVASCRIPT"

  #echo "(4)"
  #echo "(5)"
  #echo "(6)"
  #echo "(7)"
  #echo "(8)"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read ac

fi

if [[ $ac == "1" || $ac == "PYTHON" || $ac == "python" ]]; then
clear
  clear

  figlet PYTHON

  find . -name "*.py*"

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc


elif [[ $ac == "2" || $ac == "BASH" || $ac == "bash" ]]; then
clear
  clear

  figlet BASH

  find . -name "*.sh*"

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc


elif [[ $ac == "3" || $ac == "JAVASCRIPT" || $ac == "javacript" ]]; then
clear
  clear

  figlet JAVASCRIPT

  find . -name "*.js*"

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

#elif [[ $ac == "4" || $ac == "" || $ac == "" ]]; then
#clear
  #clear


fi

### < 2 > ###

if [[ $dzn == "2" ]]; then
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

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"OLUŞTURMAK İSTEDİĞİN DOSYANIN İSMİ NEDİR"$red"]-["$yellow"?"$red"]"$transparent"" & read make

  cd $list

  nm="DOSYA OLUŞTURMAK"

  mkdir $make

  echo ""

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

### < 3 > ###

if [[ $dzn == "3" ]]; then
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

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"OLUŞTURMAK İSTEDİĞİN DOSYANIN İSMİ NEDİR"$red"]-["$yellow"?"$red"]"$transparent"" & read make

  cd $list

  nm="DOSYA SİLMEK"

  sudo rm -rf $make

  echo ""

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc


fi

### < 4 > ###

if [[ $dzn == "4" ]]; then
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

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"GÖRMEK İSTEDİĞİN DOSYANIN VE YA DİZİNİN İSMİ NEDİR"$red"]-["$yellow"?"$red"]"$transparent"" & read make

  cd $make

  ls $make

  nm="DOSYANIN İÇERĞİNİ GÖRÜNTÜLEMEK"

  echo ""

  echo "Lütfen Geri Dönmek İçin Enter'a Basın"

  echo ""

  echo -n -e ""$red"["$blue"RE4P"$yellow"@"$white"EUPERLINE"$red"]-["$yellow"~"$red"]"$transparent"" & read bcc

fi

### < 99 > ###

if [[ $dzn == "99" || $dzn == "EXIT" ]]; then
clear
  clear

  exit 1

fi
done
