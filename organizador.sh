#!/bin/bash

shopt -s nocaseglop

echo "--- INICIANDO PROTOCOLO DE LIMPIEZA ---"

mkdir -p Imagenes Documentos Ejecutables Otros

for archivo in *; do
    
    if [ -d "$archivo" ] || [ "$archivo" == "organizador.sh" ]; then
        continue
    fi



    extension="${archivo##*.}"

    case "$extension" in
        jpg|png|jpeg|gif|bmp)
            echo "Moviendo imagen: $archivo"
            mv -n "$archivo" Imagenes/
            ;;
        pdf|docx|txt|doc|ppt)
            echo "Moviendo documento: $archivo"
            mv -n "$archivo" Documentos/
            ;;
        exe|py|sh|bat)
            echo "oviendo ejecutable: $archivo"
            mv -n "$archivo" Ejecutables/
            ;;
        *)
           
            echo "Moviendo archivo vario: $archivo"
            mv -n "$archivo" Otros/
            ;;
    esac
done
echo "--- LIMPIEZA FINALIZADA SIN ERRORES ---"
ls -F



