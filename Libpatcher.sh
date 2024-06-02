#!/bin/bash
clear

echo -e "\033[36m\n\n ⚪  WELCOME TO MY LIB PATCHER SCRIPT...!!  \033[0m"
echo -e "\033[32m ⚪  VERSION : V1.0  \033[0m"
echo -e "\033[33m ⚪  AUTHOR : KILLER [JULFIKUR]\033[0m"
echo -e "\033[34m ⚪  REQUIREMENT : RADARE2 & GHIDRA \033[0m"

options=("👑Install Radare2 And R2Ghidra [Recommend] ? " "👑Find Offsets In Lib..! " "👑Start Lib Patching..!" "👑Dump Lib..!" "⭕Exit..!")

function display_menu() {
    echo -e "\033[33m\n  SELECT AN OPTION -> \033[0m"
    for i in "${!options[@]}"; do
        echo "  $((i+1)).${options[i]}"
    done
    echo ""
    read -p "  >>> " choice
}

# Main loop
while true; do
    display_menu
    case $choice in
        1)
            echo -e "\033[32m\n 👑 INSTALL RADARE2 BY 2 WAY 👑\n\033[0m"
            echo -e "\033[32m [ First Way : ]    \033[0m"
            echo -e "\033[32m [ 1 ] pkg install git  \033[0m"
            echo -e "\033[32m [ 2 ] git clone https://github.com/radareorg/radare2.git  \033[0m"
            echo -e "\033[32m [ 3 ] cd radare2  \033[0m"
            echo -e "\033[32m [ 4 ] ./sys/termux.sh  \033[0m"
            echo -e ""
            echo -e "\033[32m [ Second Way : ]  \033[0m"
            echo -e "\033[32m [ 1 ]  pkg install radare2 -y  \033[0m"
            echo -e "\033[32m [ 2 ]  r2 -h  \n\033[0m"
            echo -e "\033[32m 👑 INSTALL GHIDRA [R2GHIDRA] 👑\033[0m"
            echo -e "\033[32m [ 1 ]  pkg install radare2 -y  \033[0m"
            echo -e "\033[32m [ 2 ]  r2pm -ci r2ghidra  \033[0m"
            
            echo  -e "\033[35m\n\n Do You Want To Install Radare2 & R2Ghidra ? (yes/no) \033[0m"
            read -p " >>> " choice

            if [ "$choice" == "yes" ]; then
            clear
            echo -e "\033[32m Installing.....It Takes 20 Minutes Be Patient \n\033[0m"
            pkg install git&&git clone https://github.com/radareorg/radare2.git&&cd radare2&&./sys/termux.sh
            pkg install radare2 -y
            r2pm -ci r2ghidra
            echo -e "\033[32m\n Install Completed.....Enjoy 🤩\n\033[0m"
            elif [ "$choice" == "no" ]; then
            clear
            else
            echo -e "\033[31m\n   What The Fuck..!! Just Type yes or no \033[0m"
            fi
            
            ;;
        2)
            clear
            echo -e "\033[33m ⚠️ Instructions  ⚠️\n\033[0m"
            echo -e "\033[32m [ Dump All Method Offsets By Using ( Class Name ) ] \033[0m"
            echo -e "\033[36m [ 1 ] a  --[a  = analyze] \033[0m"
            echo -e "\033[36m [ 2 ] iE ~+Weapon:: \n [ iE ] or U can Use [ is ]. iE for exporting global symbols,\n ~ for grep, \n + for (wild) case insensitive means everything before your keyword.  \033[0m"
            echo -e "\033[36m [ 3 ] pdf / pdg / pdr   --[ For Analyzing Offsets ] \033[0m"
            
            echo -e "\033[32m\n [ Dump Offsets By Using ( Method Name ) ] \033[0m"
            echo -e "\033[36m [ 1 ] a  --[a  = analyze] \033[0m"
            echo -e "\033[36m [ 2 ] iE ~+Ammo / iE ~+Recoil / iE ~+Reload \n [ iE ] or U can Use [ is ]. iE for exporting global symbols,\n ~ for grep, \n + for (wild) case insensitive means everything before your keyword.  \033[0m"
            echo -e "\033[36m [ 3 ] pdf / pdg / pdr   --[ For Analyzing Offsets ] \033[0m"
            echo -e "\033[32m\n [ Dump Offsets By Using ( Class Name & Method Name ) ] \033[0m"
            echo -e "\033[36m [ 1 ] a  --[a  = analyze] \033[0m"
            echo -e "\033[36m [ 2 ] iE ~+Weapon::Ammo / iE ~+Weapon::Recoil / iE ~+Weapon::Reload \n [ iE ] or U can Use [ is ]. iE for exporting global symbols,\n ~ for grep, \n + for (wild) case insensitive means everything before your keyword.  \033[0m"
            echo -e "\033[36m [ 3 ] pdf / pdg / pdr   --[ For Analyzing Offsets ] \033[0m"
            echo -e "\033[31m\n [ 📍 ] q  --[Type ( q ) To quite From Radare2]\033[0m"
            echo  -e "\033[35m\n\n Do You Want To Find Offset ? (yes/no) \033[0m"
            read -p " >>> " choice

            if [ "$choice" == "yes" ]; then
            
            echo -e "\033[33m\n\n 📂   ENTER YOUR LIB FILE PATH -> \033[0m"
            read -p " 📥   " file_path3
            cd $file_path3

            echo -e "\033[33m\n 📝   ENTER YOUR LIB NAME -> \033[0m"
            read -p " 📥   " Lib3
            echo " "
            echo -e "\033[34m ◇◇◇◇◇◇◇◇◇◇ \033[0m"
            echo " "
            r2 -w $Lib3
            
            elif [ "$choice" == "no" ]; then
            clear
            else
            echo -e "\033[31m\n   What The Fuck..!! Just Type yes or no \033[0m"
            fi
            
            ;;
        3)
            
            clear
            echo -e "\033[32m ⚠️ Instructions  ⚠️\n\033[0m"
            echo -e "\033[32m You Can Patch Lib By Using This Commands : \033[0m"
            echo -e "\033[32m [1]  a  --[a  = analyze] \033[0m"
            echo -e "\033[32m [2]  s 0xoffset  --Eg. s 0x1234  \033[0m"
            echo -e "\033[32m [3]  aF  --aF for analyzing function  \033[0m"
            echo -e "\033[32m [4]  pdf / pdg / pdr  -- You can Use any Of This Command  \033[0m"
            echo -e "\033[32m [5]  o++  --Reopen the file in read-write mode \033[0m"
            echo -e "\033[32m [6]  PatchCode  -- [E.g (wa nop) For False Or Value 0 ]  \033[0m"
            echo -e "\033[31m\n [📍] q  --[Type ( q ) To quite From Radare2]\033[0m"
            
            echo -e "\033[32m\n [ x64 ] Patch Codes : \n [bool true] = wx 20008052C0035FD6 \n [bool false] = wx 00008052C0035FD6 \n [int zero] = wx 00008052C0035FD6 \n [int16 max] = wx E0FF8F52C0035FD6 \n [int32 max] = wx E0FF9F52E0FFAF72C0035FD6 \n [long zero] = wx 00008052C0035FD6 \n [long 64] = wx E0FF9FD2E0FFBFF2E00FC0F2C0035FD6 \n [float zero] = wx E003271EC0035FD6 \n [double zero] = wx E003679EC0035FD6 \n [void nop] = wx C0035FD6 \033[0m"
            
            echo -e "\033[32m\n [ x32 ] Patch Codes : \n [bool true] = wx 0100A0E31EFF2FE1 \n [bool false] = wx 0000A0E31EFF2FE1 \n [int zero] = wx 0000A0E31EFF2FE1 \n [int16 max] = wx FF0F07E31EFF2FE1 \n [int32 max] = wx FF0F0FE3FF0F47E31EFF2FE1 \n [long zero] = wx 0000A0E31EFF2FE1 \n [long 64] = wx 0201E0E31EFF2FE1 \n [float zero] = wx 0000A0E31EFF2FE1 \n [double zero] = wx 0000A0E31EFF2FE1 \n [void nop] = wx 1EFF2FE1 \033[0m"
            
            echo  -e "\033[35m\n\n Do You Want To Continue ? (yes/no) \033[0m"
            read -p " >>> " choice

            if [ "$choice" == "yes" ]; then
            
            echo -e "\033[33m\n\n 📂   ENTER YOUR LIB FILE PATH -> \033[0m"
            read -p " 📥   " file_path
            cd $file_path

            echo -e "\033[33m\n 📝   ENTER YOUR LIB NAME -> \033[0m"
            
            read -p " 📥   " Lib
            echo " "
            echo -e "\033[34m ◇◇◇◇◇◇◇◇◇◇ \033[0m"
            echo " "
            r2 -w $Lib
            
            elif [ "$choice" == "no" ]; then
            clear
            else
            echo -e "\033[31m\n   What The Fuck..!! Just Type yes or no \033[0m"
            fi

            ;;
        4)
            echo -e "\033[33m\n\n 📂   ENTER YOUR LIB FILE PATH -> \033[0m"
            read -p " 📥   " file_path2
            cd $file_path2

            echo -e "\033[33m\n 📝   ENTER YOUR LIB NAME -> \033[0m"
            read -p " 📥   " Lib2
            echo ""
            rabin2 -s $Lib2 >> Dump.txt 
            echo ""
            echo -e "\033[32m [✅] $Lib Dump Successfull..!! \033[0m"
            echo -e "\033[32m [📂]  Dump Saved Path : $file_path2 \033[0m"
            ;;
            
        $((${#options[@]})))
            break 
            ;; 
        *)
            echo -e "\033[31m\n  INVALID OPTION...!!\033[0m";;
    esac
    echo
done
