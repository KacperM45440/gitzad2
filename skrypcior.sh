#!/bin/bash
DATE()
{
data=$(date)
echo $data;
}

if [ "$1" == "--date" ]
then
DATE
fi
