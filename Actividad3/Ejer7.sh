#!/bin/bash

read -p "Altura: " altura

for ((i=1; i<=altura; i++))
do
    for ((j=1; j<=i; j++))
    do
        echo -n "#"
    done
    echo
done

## tanto le 6 como el 7 tuve que recurrir a la ia por el doble bucle
