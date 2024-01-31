#!/bin/bash

echo {1..10}

i=0

for ((i=0; i<11; i++))
do
    echo "$i"
done
z=0
for ((z=0;z<11;z++))
do 
   if [ $((z % 2)) -eq 0 ]; then
        echo "$z is even."
    else
        echo "$z is odd."
    fi
done 

