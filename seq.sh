#!/bin/sh

FIRST1=$1
INCREMENT2=$2
LAST3=$3

if [ "$#" != "3" ]
then
    echo 'Usage: ./seq.sh FIRST INCREMENT LAST' >&2
    exit 1
else
    if [ $INCREMENT2 -eq 0 ]
    then
        exit 1
    fi
    if [ $FIRST1 -eq $LAST3 ]
    then
        echo "$FIRST1"
    elif [ $FIRST1 -lt $LAST3 ]
    then
        if [ $INCREMENT2 -lt 0 ]
        then
            exit 1
        else
            n=$FIRST1
            i=0
            while [ $(( $FIRST1 + $i*$INCREMENT2 )) -le $LAST3 ]
                do
                    n=$(( $FIRST1 + $i*$INCREMENT2 ))
                    i=$(( i+1 ))
                    echo $n
                done
        fi
    elif [ $FIRST1 -gt $LAST3 ]
    then
        if [ $INCREMENT2 -gt 0 ]
        then
            exit 1
        else
            n=$FIRST1
            i=0
            while [ $(( $FIRST1 + $i*$INCREMENT2 )) -ge $LAST3 ]
            do
                n=$(( $FIRST1 + $i*$INCREMENT2 ))
                i=$(( i+1 ))
                echo $n
            done
        fi
    else
        exit 1
    fi
fi
