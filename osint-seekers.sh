#!/bin/bash

cowthink -f ghostbusters "Phantom X"

echo "Bienvenid@ a Osint-seekers, un menú con links externos a buscadores usados por los Informáticos" | awk '{for(i=1; i<=NF;i++) {printf "%s ", $i; system("sleep 0.5")} }'

sleep 1

clear

opc=0

while [[ $opc -le 6 ]]; do

echo -e "\e[36m1) Osint Framework [Información de fuentes abiertas]\e[0m"
echo -e "\e[32m2) Shodan [Motor de busqueda orientado al Hacking]\e[0m"
echo -e "\e[33m3) Hunter.io [Buscador de emails de sitios web]\e[0m"
echo -e "\e[35m4) FoFa [Buscador de equipos conectados a Internet]\e[0m"
echo -e "\e[1;33m5) Zoomeye [El ojo que todo lo ve]\e[0m"
echo -e "\e[31m6) salir\e[0m"
read -p "seleccione del [1 al 6] digite el número en su teclado : "  opc
i=0
while [ $i -le 2 ]; do
  for s in / - \\ \|; do
    printf "\r$s"
    sleep .1
  done
  i=$((i+1))
  done

case $opc in

       1) clear

       if command -v xdg-open > /dev/null
       then
       xdg-open https://osintframework.com/

       elif command -v gnome-open > /dev/null
       then
       gnome-open https://osintframework.com/
       fi

       sleep 3

       ;;

       2) clear

       if command -v xdg-open > /dev/null
       then
       xdg-open https://www.shodan.io/

       elif command -v gnome-open > /dev/null
       then
       gnome-open https://www.shodan.io/
       fi

       sleep 3

       ;;

      3) clear

      if command -v xdg-open > /dev/null
      then
      xdg-open https://hunter.io/

      elif command -v gnome-open > /dev/null
      then
      gnome-open https://hunter.io/
      fi

      sleep 3

      ;;

      4) clear

      if command -v xdg-open > /dev/null
      then
      xdg-open https://fofa.so/

      elif command -v gnome-open > /dev/null
      then
      gnome-open https://fofa.so/
      fi

      sleep 3

      ;;


      5) clear

      if command -v xdg-open > /dev/null
      then
      xdg-open https://www.zoomeye.org/

      elif command -v gnome-open > /dev/null
      then
      gnome-open https://www.zoomeye.org/
      fi

      sleep 3

      ;;


      6) clear

      echo "vuelva pronto"

      sleep 2.0

      exit 1

      ;;

      *)clear
        echo "UPS!!"
        echo "acaba de digitar una opción inválida"
        echo "la pantalla se bloqueará"
        echo "digite CTRL+c para volver a intentarlo"
        sleep 3
        cmatrix


       ;;
esac

done

