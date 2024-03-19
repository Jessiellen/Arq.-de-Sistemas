#!/bin/bash

# Verifica se o diretório example_folder existe
if [ ! -d "example_folder" ]; then
    mkdir example_folder
    echo "Diretório example_folder criado com sucesso."
else
    mkdir example_folder02
    echo "Diretório example_folder02 criado com sucesso."
fi
