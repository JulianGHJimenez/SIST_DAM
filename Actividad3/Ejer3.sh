#!usr/bin/bash

echo calcularemos el IMC usando los datos de cm y kg

ALTURA=1.82
PESO=72

IMC=$(($ALTURA * $ALTURA))
echo $IMC

IMC2=$((scale=2; 72 / $IMC |bc))

echo $IMC2 esta seria tu IMC
