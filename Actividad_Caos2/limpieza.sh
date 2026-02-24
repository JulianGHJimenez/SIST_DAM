#!/usr/bin/env bash

echo empezamos a ordenar

#Creamos las carpetas
mkdir -p TXTS PDFS IMGS DOCS VACIOS

#recorrido para carpertasPermisos

FORMATO="TXTS"

for file in $FORMATO; do
    if [ -d "$file" ]; then
        echo "EXISTE EL DIRECTORIO: $file"
       chmod 775 TXTS
    fi
done

FORMATO="PDFS"

for file in $FORMATO; do
    if [ -d "$file" ]; then
        echo "EXISTE EL DIRECTORIO: $file"
        chmod 775 PDFS
    fi
done

FORMATO="IMGS"

for file in $FORMATO; do
    if [ -d "$file" ]; then
        echo "EXISTE EL DIRECTORIO: $file"
        chmod 775 IMGS
    fi
done

FORMATO="VACIOS"

for file in $FORMATO; do
    if [ -d "$file" ]; then
        echo "EXISTE EL DIRECTORIO: $file"
        chmod 775 VACIOS
    fi
done


#Recorrido para mover archivos a carpetas correspondientes

FORMATO="*.odt"

for file in $FORMATO; do
    if [ -e "$file" ]; then
        echo "moviendo archivo a DOCS: $file"
        mv -f "$file" /DOCS
    fi
done

FORMATO="*.docx"

for file in $FORMATO; do
    if [ -e "$file" ]; then
        echo "moviendo archivo a DOCS: $file"
        mv -f "$file" /DOCS
    fi
done

FORMATO="*.txt"

for file in $FORMATO; do
    if [ -e "$file" ]; then
        echo "moviendo archivo a TXTS: $file"
        mv -f "$file" /TXTS
    fi
done

FORMATO="*.jpg"

for file in $FORMATO; do
    if [ -e "$file" ]; then
        echo "moviendo archivo a IMGS: $file"
        mv -f "$file" /IMGS
    fi
done

FORMATO="*.gif"

for file in $FORMATO; do
    if [ -e "$file" ]; then
        echo "moviendo archivo a IMGS: $file"
        mv -f "$file" /IMGS
    fi
done


FORMATO="*.png"

for file in $FORMATO; do
    if [ -e "$file" ]; then
        echo "moviendo archivo a IMGS: $file"
        mv -f "$file" /IMGS
    fi
done



FORMATO="*.pdf"

for file in $FORMATO; do
    if [ -e "$file" ]; then
        echo "moviendo archivo a PDFS: $file"
        mv -f "$file" /PDFS
    fi
done


FORMATO="*.txt"

for file in $FORMATO; do
    if [ -f "$file" ] && [ ! -s "$file" ]; then
        echo "moviendo archivo vacío: $file"
        mv -f "$file" /VACIOS
    fi
done
