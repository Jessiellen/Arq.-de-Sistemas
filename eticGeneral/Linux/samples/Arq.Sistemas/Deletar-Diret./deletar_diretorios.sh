#!/bin/bash

# Verifica se o argumento é válido
if [ $# -gt 1 ]; then
    echo "Uso: $0 [true|false]"
    exit 1
fi

# Define o valor padrão para o argumento
deletar_todos=false

# Verifica se o argumento booleano foi passado
if [ $# -eq 1 ]; then
    if [ "$1" != "true" ] && [ "$1" != "false" ]; then
        echo "O argumento deve ser 'true' ou 'false'."
        exit 1
    fi
    deletar_todos=$1
fi

# Verificar se o diretório script_sample_folder existe
if [ ! -d "script_sample_folder" ]; then
    echo "A pasta script_sample_folder não existe."
    exit 1
fi

# Deleta diretórios
for folder in script_sample_folder/*/; do
    if [ "$deletar_todos" = true ] || [ -n "$(ls -A "$folder")" ]; then
        echo "Deletando $folder"
        rm -rf "$folder"
    fi
done

echo "Deleção de diretórios concluída."

