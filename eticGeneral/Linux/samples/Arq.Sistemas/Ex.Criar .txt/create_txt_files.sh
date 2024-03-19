#!/bin/bash

if [ -d "script_sample_folder" ]; then
    for folder in script_sample_folder/*/; do
        folder_name=$(basename "$folder")
        echo "script_sample_folder-$folder_name" > "$folder/folder_name.txt"
        echo "Arquivo folder_name.txt criado com sucesso em $folder."
    done
else
    echo "A pasta script_sample_folder não existe."
fi

