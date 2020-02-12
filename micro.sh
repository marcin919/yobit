#!/bin/bash
#Ausgaben in Variable schreiben

#Variablendefinition
# curl -s https://yobit.net/en/trade/YOZI/BTC | grep "Last:" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba' >> /home/yozi.txt

a="$(curl -s https://yobit.net/en/trade/MICRO/BTC | grep "Last:" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba')"


echo "MICRO/USD"  $a > /home/last_micro.txt

echo $a >> /home/micro.txt

mail -s"MICRO: $a" ms@mm.de < /home/last_micro.txt
