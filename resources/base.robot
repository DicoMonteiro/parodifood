***Settings***
Documentation       Arquivos base do projeto (tudo começa aqui)

Library             Browser
Library             OperatingSystem

Resource            actions/search.robot
Resource            actions/home.robot
Resource            actions/cart.robot
Resource            actions/order.robot


* Variables *
${DEFAULT_TIMEOUT}  10

*Keywords*
### Helpers ###
Get JSON
    [Arguments]         ${FILE_NAME}

    # Recebe o arquivo e transforma o mesmo em um json e no formato que o Robot entende e aceita (Evaluate)
    ${FILE}         Get File            ${EXECDIR}/resources/fixtures/${FILE_NAME}
    ${SUPER_VAR}    Evaluate            json.loads($FILE)           json

    [Return]        ${SUPER_VAR}