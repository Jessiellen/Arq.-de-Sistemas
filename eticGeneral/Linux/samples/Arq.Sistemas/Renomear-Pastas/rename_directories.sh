#!/bin/bash

# Verifica se o número de argumentos é válido
if [ $# -ne 1 ]; then
    echo "Uso: $0 <prefixo>"
    exit 1
fi

prefixo=$1

# Verificar se o diretório script_sample_folder existe
if [ ! -d "script_sample_folder" ]; then
    echo "A pasta script_sample_folder não existe."
    exit 1
fi

# Renomear os diretórios
for folder in script_sample_folder/*/; do
    folder_name=$(basename "$folder")
    novo_nome="${prefixo}-${folder_name}"
    mv "$folder" "script_sample_folder/$novo_nome"
    echo "Pasta renomeada para $novo_nome"
    done

