#!/bin/bash
DATE()
{
data=$(date)
echo $data;
}

LOGS()
{
for i in {1..100..1}
do
echo $(date) >> log${i}.txt
echo $0 >> log${i}.txt
done
}

if [ "$1" == "--date" ]
then
DATE
fi

if [ "$1" == "--logs" ]
then
LOGS
fi
