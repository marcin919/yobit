#!/bin/bash
#Ausgaben in Variable schreiben

#Variablendefinition
# curl -s https://yobit.net/en/trade/YOZI/BTC | grep "Last:" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba' >> /home/yozi.txt

btc="$(curl -s https://yobit.net/en/trade/BTC/USD | grep "Last:" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba')"
ama="$(curl -s https://yobit.net/en/trade/AMA/BTC | grep "Last:" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba')"
btt="$(curl -s https://yobit.net/en/trade/BTT/BTC | grep "Last:" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba')"
micro="$(curl -s https://yobit.net/en/trade/MICRO/BTC | grep "Last:" | sed -e :a -e 's/<[^>]*>//g;/</N;//ba')"

echo "BTC/USD"  $btc > /home/last.txt
echo "AMA/BTC"  $ama >> /home/last.txt
echo "BTT/BTC"  $btt >> /home/last.txt
echo "MICRO/BTC"  $micro >> /home/last.txt

echo $btc >> /home/btc.txt
echo $ama >> /home/ama.txt
echo $btt >> /home/btt.txt
echo $micro >> /home/micro.txt

mail -s"Yobit info 0.5" email@domain.de < /home/last_yozi.txt
