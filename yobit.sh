#!/bin/bash
#Ausgaben in Variable schreiben

#Variablendefinition
# curl -s https://yobit.net/en/trade/YOZI/BTC | grep "Last:" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba' >> /home/yozi.txt

a="$(curl -s https://yobit.net/en/trade/BTC/USD | grep "Last:" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba')"
b="$(curl -s https://yobit.net/en/trade/AMA/BTC | grep "Last:" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba')"
c="$(curl -s https://yobit.net/en/trade/BTT/BTC | grep "Last:" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba')"


echo "BTC/USD"  $a > /home/last.txt
echo "AMA/BTC"  $b >> /home/last.txt
echo "BTT/BTC"  $c >> /home/last.txt

echo $a >> /home/btc.txt
echo $b >> /home/ama.txt
echo $c >> /home/btt.txt

mail -s"Yobit" email@domain.de < /home/last_yozi.txt
