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
echo -e "$Y"
opkg update

sleep 2
cek=$(find /usr/bin/xderm-mini | cut -b 10,11,12,13,14,15,16,17,18,19,20
if [[ $cek == *"xderm-mini"* ]]; then
echo -e $R xderm mini telah terinstall, mengupdate xderm-mini/n"
xderm mini update;clear
else
wget --no-check-certificate "https://raw.githubusercontent.com/vitoharhari/xderm-mini/main/xderm-mini" -O /usr/bin/xderm-mini && chmod +x /usr/bin/xderm-mini && xderm-mini update;clear
echo -e "\e[31;1m xderm-mini telah di install\e[31["
fi

cek=$(find /etc/init.d/https-dns-proxy | grep -i https-dns-proxy | cut
-d= -f3 | cut -b 13,14,15,16,17)
if [[ $cek == *"https"* ]]; then
echo -e "packet https-dns-proxy telah terinstall"
else
opkg update && opkg install https-dns-proxy
fi
sleep 1
cek=$(find /usr/bin/)
if [[ $cek == *"tun2socks.1"* ]]; then
rm /usr/bin/*socks.1
echo -e "$R file duplikat xderm-mini berhasil dihapus"
fi
sleep 1
cek=$(find /usr/bin/)
if [[ $cek == *"tun2socks.2"* ]]; then
rm /usr/bin/*socks.2
echo -e "$R file duplikat xderm-mini berhasil dihapus"
fi
cek=$(find /usr/bin/v2ray | grep -i v2ray | cut -b 10,11,12,13,14
if [[ $cek == *"v2ray"* ]]; then 
echo -e "\e[31;1m v2ray telah terinstall"
else
wget --no-check-certificate "https://github.com/vitoharhari/xderm-mini/raw/main/v2ray-core_4.34.0-1_aarch64_cortex-a53.ipk" -O ~/xderm-mini
fi
sleep 1
cek=$(find /root/*.txt | grep -i config | cut -b 7,8,9,10,11,12 && cat ~/config.txt | grep -i host | cut -d= -f1)
if [[ $cek == *"config"* ]] && [[ $cek == *"host"* ]]; then
echo -e "$R config.txt telah ada"
elif [[ $cek == *"config"* ]] && [[ -z "$cek" ]]; then
cat <<EOF> ~/config.txt
host=103.157.1xx.xx
port=443
pudp=7300
user=ryanxxxx
pass=123xxx
sni=www.xxx.xx
vmess://eyJhZGQiOixxxxxxx
mode=0
EOF
else
touch ~/config.txt
cat <<EOF>> ~/config.txt
host=103.157.1xx.xx
port=443
pudp=7300
user=ryanxxxx
pass=123xxx
sni=www.xxx.xx
vmess://eyJhZGQiOixxxxxxx
mode=0
EOF
fi

sleep 2
echo -e "$LB"
wget --no-check-certificate "https://raw.githubusercontent.com/vitoharhari/xderm-mini/main/xderm-mini" -P /usr/bin/ && chmod +x /usr/bin/xderm-mini
wget --no-check-certificate "https://github.com/vitoharhari/xderm-mini/raw/main/badvpn-tun2socks" -P /usr/bin/ && chmod +x /usr/bin/badvpn-tun2socks
mkdir /root/xderm-mini/
wget --no-check-certificate "https://github.com/vitoharhari/xderm-mini/raw/main/v2ray-core_4.34.0-1_aarch64_cortex-a53.ipk" -P /root/xderm-mini/
opkg install /root/xderm-mini/*.ipk
opkg update && opkg install coreutils-base64
opkg install procps-ng-ps git curl sshpass python3-pip
python3 -m pip install requests beautifulsoup4
opkg install openssl-util
opkg install php7 php7-cgi php7-mod-session
rm /root/xderm-mini/*
rmdir /root/xderm-mini/

clear
echo -e "\033[7;36m Mempersiapkan xderm-mini.... \033[0m"
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
echo -e "$Y xderm-mini berhasil di install"
echo -e "\033[1;31m xderm-mini selesai di install\033[0m"
echo -e "\033[1;32m xderm-mini by Ryan Fauzi and modded by Wegare\033[0m"
echo -e "\033[1;33m auto installer xderm-mini by VITO H.S modded By Ahmad Pradipta\033[0m"
echo -e "\033[1;34m terima kasih dan sampai jumpa di script auto installer selanjutnya\033[0m"
sleep 1
sleep 2
clear
xderm-mini
rm /usr/bin/install-xderm-mini