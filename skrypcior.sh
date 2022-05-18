#!/bin/bash
i=1
pierwszy=$1
drugi=$2
#SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
CURRENT_DIR=$(pwd)
LOGS()
{
if [ "$drugi" == "" ]
then
drugi=100
fi
while [ $i -le $drugi ];
do
mkdir log"${i}"
echo $(date) >> log"${i}"/log"${i}".txt
basename log"${i}"/log"${i}".txt >> log"${i}"/log"${i}".txt
echo $0 >> log"${i}"/log"${i}".txt
((i=i+1))
done
}

DATE()
{
data=$(date)
echo $data
}

if [ "$1" == "--date" ] || [ "$1" == "-d" ]
then
DATE
fi

if [ "$1" == "--logs" ] || [ "$1" == "-l" ]
then
LOGS
fi

if [ "$1" == "--help" ] || [ "$1" == "-h" ]
then
echo "Dostepne opcje:"
echo "--date/-d | Wyswietla obecna date."
echo "--logs/-l [ilosc] | Tworzy logi."
echo "--help/-h | Wyswietla to menu."
echo "--init/-i | Klonuje repozytorium i robi cuda na patyku."
fi

if [ "$1" == "" ]
then
echo "Blad: Nie podano argumentu."
echo "Wpisz --help aby zobaczyc dostepne argumenty, lub sprobuj jeszcze raz."
fi

if [ "$1" == "--init" ] || [ "$1" == "-i" ]
then
#echo $CURRENT_DIR
#echo $SCRIPT_DIR
git clone https://github.com/KacperM45440/gitzad2 $CURRENT_DIR
export PATH="$PATH:$CURRENT_DIR"
#TA ZMIANA WYKONUJE SIE TYLKO LOKALNIE, TJ.: NA CZAS WYKONYWANIA SKRYPTU.
#CHCIALBYM UMIEC ZMIENIC SCIEZKE GLOBALNIE, ACZKOLWIEK GIT UPIERA SIE ZE NIE MA POTRZEBNYCH
#DO TEGO PLIKOW, A JA SIE Z NIM O 3 W NOCY KLOCIC NIE BEDE:)
echo "${PATH//:/$'\n'}"
fi
