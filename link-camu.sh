# Script en bash para camuflar links 
# Xd

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] URL invalida, usa http o https \e[0m"
            exit 1
        fi
    fi
}

echo
echo
echo "################################"
echo "#                              #"
echo "#         OCULTA LINK          #"
echo "#                              #"
echo "################################"
echo
echo -e "\e[40;38;5;82m Sigueme en TikTok :) \e[30;48;5;82m @ale.tryhard \e[0m"
echo -e "\e[30;48;5;82m    SCRIPT \e[40;38;5;82m   CAMUFLAR LINK PHISHING \e[0m"
echo
echo
echo -e "\e[1;31;42m === URL DE ATAQUE ===\e[0m"
echo
echo -n "Pega el link que quieres camuflar  (que sea http o https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo
echo -e "\e[1;31;42m --- Cambiar el dominio ---\e[0m"
echo 'Escoja el dominio o URL (que sea http o https) ejemplo https://google.com, http://www.justiciasantafe.gov.ar/js/index.php :'
echo
read mask
url_checker $mask
echo
echo 'Escoja el tipo de ingenieria social (ejemplo: dinero-gratis, youtube-premium)'
echo
echo -e "\e[31mNo uses espacios al escribir el tipo de ingenieria social, usa - para separar las palabras \e[0m"
echo
read words
echo
echo 'Generando Link...'
echo
echo 'Link Generado..'
echo
final=$mask-$words@$shorter
echo $final
