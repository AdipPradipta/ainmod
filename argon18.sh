#!/bin/bash

#-- colors --#
#R='\e[1;31m' #RED
#G='\e[1;32m' #GREEN
#B='\e[1;34m' #BLUE
#Y='\e[1;33m' #YELLOW
#C='\e[1;36m' #CYAN
W='\e[1;37m' #WHITE
##############

#-- colors v2 --#
R='\e[31;1m' #RED
G='\e[32;1m' #GREEN
Y='\e[33;1m' #YELLOW
DB='\e[34;1m' #DARKBLUE
P='\e[35;1m' #PURPLE
LB='\e[36;1m' #LIGHTBLUE

clear

cek=$(find /root/)
if [[ $cek == *"argon-theme"* ]]; then
rm -rf /root/argon-theme
echo -e "$R file duplikat argon theme berhasil dihapus"
fi
sleep 1
cek=$(find /root/)
if [[ $cek == *"argon-theme.1"* ]]; then
rm -rf /root/argon-theme.1
echo -e "$R file duplikat argon theme berhasil dihapus"
fi
sleep 1
echo -e "$Y"

mkdir /root/argon-theme/
wget --no-check-certificate "https://github.com/vitoharhari/argon-themev18/raw/main/luci-app-argon-config_0.8-beta_all.ipk" -P /root/argon-theme && chmod +x /root/argon-theme/luci-app*
wget --no-check-certificate "https://github.com/vitoharhari/argon-themev18/raw/main/luci-theme-argon_1.7.0-20200909_all.ipk" -P /root/argon-theme && chmod +x /root/argon-theme/luci-theme*
opkg install /root/argon-theme/*.ipk
sleep 3

echo -e "$LB"

clear
echo -e "\033[7;36m Mempersiapkan argon theme.... \033[0m"
sleep 2
echo -ne '\n'
echo -ne '\033[7;36m (#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(1%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m (##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(2%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m (###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(3%) \033[0m\r'
sleep 1n
echo -ne '\033[7;36m (####~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(4%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m (#####~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(5%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m (##########~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(10%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m (###############~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(15%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m (####################~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(20%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m (#####################~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(21%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m (###########################~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)27%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m ###############################~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(35%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m ###################################~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(35%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m ######################################~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(40%) \033[0m\r'
echo -ne '\033[7;36m ########################################~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(45%) \033[0m\r'
echo -ne '\033[7;36m ###########################################~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(50%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m ###############################################~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(55%) \033[0m\r'
echo -ne '\033[7;36m ####################################################~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~)(60%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m ############################################################~~~~~~~~~~~~~~~~~~~~~~~~~)(80%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m ########################################################################~~~~~~~~~~~~~)(85%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m ##############################################################################~~~~~~~)(90%) \033[0m\r'
sleep 1
echo -ne '\033[7;36m (####################################################################################)(100%) \033[0m\r'
echo -ne '\n'
echo -e "\033[1;35m ~~~~~~~~~~(100%) \033[0m"
echo -e "\033[1;31m argon theme selesai di install\033[0m"
echo -e "\033[1;32m theme ini khusus untuk openwrt v18 !!!\033[0m"
echo -e "\033[1;33m auto installer argon theme by VITO H.S\033[0m"
echo -e "\033[1;34m terima kasih dan sampai jumpa di script auto installer selanjutnya\033[0m"
sleep 1
sleep 2
echo -e "$Y argon theme berhasil di install"
sleep 2
clear

rm -rf /root/argon-theme/
rm /root/install-argon-v18
