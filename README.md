### Pré-condições ###
## Deve ser instalado o Python
Você pode instala-lo através do link:
https://www.python.org/downloads/

# Verificar se instalou o Python
- Abrir o terminal (CMD) e executar o comando:

python --version

- Verificar se o pip também está instalado, executa o comando:

pip --version


## Deve ser instalado as bibliotecas utilizadas (robotframework) - Mais informações no site https://robotframework.org/
- Você instalas através dos comandos:

pip install robotframework

- Verificar se foi instalado, executa o comando:

pip freeze


## Instalar a biblioteca (browser library) - Mais informações no site https://robotframework.org/
Acessar o link abaixo e seguir os passos:

https://github.com/MarketSquare/robotframework-browser


- Verificar se foi instalado, executa o comando:

pip freeze


### Execução ###
## Executando o robot com parametros

- Pasta aonde ficarão armazenados os outputs (logs)

robot -d ./logs tests/busca.robot

- Passando como tag para executar somente 1 único cenário ou os cenários que constam a tag

robot -d ./logs -i temp tests/carrinho.robot

- Executando todos os cenários

robot -d ./logs tests\


- Executando com dados enviados via linha de comando

robot -d ./logs -v browser:chromium -v headless:False tests\


### Resultados ###
## Verificar os resultados obtidos

- Pasta aonde foi definido os outputs

    logs/log.html ou logs/report.html
