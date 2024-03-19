#!/bin/bash
echo "Iniciando a execução do script"

if [ ! -f "example_file.txt" ]; then
    echo "Conteúdo inicial" > example_file.txt
else
    echo "Conteúdo adicional" >> example_file.txt
fi

