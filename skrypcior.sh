#!/bin/bash
i=1
pierwszy=$1
drugi=$2

LOGS()
{
echo $pierwszy
echo $drugi
echo $i
while [ $i -le $drugi ];
do
echo $(date) >> log"${i}".txt
echo $0 >> log"${i}".txt
((i=i+1))
done
}

DATE()
{
data=$(date)
echo $data
}

if [ "$1" == "--date" ]
then
DATE
fi

if [ "$1" == "--logs" ]
then
LOGS
fi

if [ "$1" == "--help" ]
then
echo "Dostepne opcje:"
echo "--date | Wyswietla obecna date."
echo "--logs [ilosc] | Tworzy logi."
echo "--help | Wyswietla to menu."
fi

if [ "$1" == "" ]
then
echo "Blad: Nie podano argumentu."
echo "Wpisz --help aby zobaczyc dostepne argumenty, lub sprobuj jeszcze raz."
fi
