#!/usr/bin/env bash

echo "Empezamos a ordenar..."

mkdir -p TXTS PDFS IMGS DOCS VACIOS

chmod 775 TXTS PDFS IMGS DOCS VACIOS

echo "Carpetas creadas y permisos asignados"

# MOVER ARCHIVOS VACÍOS PRIMERO
for file in *.txt; do
    if [ -f "$file" ] && [ ! -s "$file" ]; then
        echo "Moviendo archivo vacío: $file"
        rm -f "$file" VACIOS/
    fi
done

# MOVER DOCUMENTOS
for file in *.odt *.docx; do
    if [ -f "$file" ]; then
        echo "Moviendo archivo a DOCS: $file"
        rm -f "$file" DOCS/
    fi
done


# MOVER TXT (NO VACÍOS)
for file in *.txt; do
    if [ -f "$file" ]; then
        echo "Moviendo archivo a TXTS: $file"
        rm -f "$file" TXTS/
    fi
done


# MOVER IMÁGENES
for file in *.jpg *.png *.gif; do
    if [ -f "$file" ]; then
        echo "Moviendo imagen a IMGS: $file"
        rm -f "$file" IMGS/
    fi
done

# MOVER PDFs
for file in *.pdf; do
    if [ -f "$file" ]; then
        echo "Moviendo archivo a PDFS: $file"
        rm -f "$file" PDFS/
    fi
done

echo "Terminado"
