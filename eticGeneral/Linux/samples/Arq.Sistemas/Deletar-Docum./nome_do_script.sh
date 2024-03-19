#!/bin/bash

# Verifica se o número de argumentos é válido
if [ $# -ne 1 ]; then
    echo "Uso: $0 <caractere>"
    exit 1
fi

caractere=$1

# Verifica se o diretório script_sample_folder existe
if [ ! -d "script_sample_folder" ]; then
    echo "A pasta script_sample_folder não existe."
    exit 1
fi

# Deleta o conteúdo dos diretórios
for folder in script_sample_folder/*"$caractere"*/; do
    if [ -d "$folder" ]; then
        echo "Deletando conteúdo de $folder"
        rm -rf "$folder"/*
    fi
done

echo "Deleção de conteúdo concluída."

