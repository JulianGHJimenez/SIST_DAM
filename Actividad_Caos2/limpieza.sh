#!/usr/bin/env bash

echo empezamos a ordenar
mkdir -p TXTS PDFS IMGS DOCS VACIOS

mv *.txt *.odt /DOCS
mv *.jpg *.png *.gif /IMGS
mv *.txt /TXTS
mv *.pdf /PDFS

if [[ -s >0 ]]

