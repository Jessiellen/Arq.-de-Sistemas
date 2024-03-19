O script "script_01.sh" cria um diretório chamado example_folder se ele não existir, se o example_folder já existir, ele cria um novo diretório chamado example_folder02.

    #!/bin/bash: é para indicar que o script deve ser interpretado pelo bash.

    if [ ! -d "example_folder" ]; then: É para verificar se o diretório example_folder não existe (! -d "example_folder" verifica se example_folder não é um diretório).

    mkdir example_folder: Se o diretório example_folder não existir, esta linha criará o diretório example_folder.

    else: Esta parte é executada se o diretório example_folder existir.

    mkdir example_folder02: Se o diretório example_folder já existir, esta linha cria o diretório example_folder02.
