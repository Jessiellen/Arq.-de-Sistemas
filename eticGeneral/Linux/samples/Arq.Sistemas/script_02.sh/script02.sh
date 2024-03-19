#!/bin/bash indica que o script deve ser interpretado pelo bash.

if [ ! -f "example_file.txt" ]; then Verifica se o arquivo example_file.txt não existe. O -f verifica se o caminho especificado é um arquivo regular e p usei emvez de -d, que é usado para verificar diretórios.

    echo "Conteúdo inicial" > example_file.txt Se o arquivo não existir, cria o arquivo e escreve "Conteúdo inicial" nele.
else Se o arquivo já existir, executa o código a seguir.
    echo "Conteúdo adicional" >> example_file.txt Adiciona "Conteúdo adicional" ao final do arquivo existente.Se o arquivo example_file.txt já existir, esta linha acrescenta 
fi é o fim da  condicional.

