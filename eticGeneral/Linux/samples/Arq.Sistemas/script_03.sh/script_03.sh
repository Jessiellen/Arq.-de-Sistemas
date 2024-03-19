#!/bin/bash

echo "Verificando se o arquivo é gravável..."

if [ -w "example_file.txt" ]; then
    echo "O arquivo é gravável. Escrevendo 'Conteúdo inicial' no arquivo..."
    echo "Conteúdo inicial" > example_file.txt
    echo "Escrita concluída."
else
    echo "O arquivo não é gravável. Não foi possível escrever nele."
fi

