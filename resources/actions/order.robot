*Settings*
Documentation           Ações da funcionalidade de fechamento de pedido.


*Keywords*
Go Checkout
    Click               text=Fechar Pedido

    ${element}          Set Variable        css=.page-header

    Wait For Elements State         ${element}        visible         ${DEFAULT_TIMEOUT}
    Get Text                        ${element}        contains        Finalize o seu pedido

Fill Data Customer
    [Arguments]         ${Customer}

    Fill Text       css=input[placeholder="Nome"]                        ${Customer["name"]}
    Fill Text       css=input[placeholder="E-mail"]                      ${Customer["email"]}
    Fill Text       css=input[placeholder^="Confirmação"]                ${Customer["email"]}
    Fill Text       css=input[placeholder="Endereço"]                    ${Customer["address"]}
    Fill Text       css=input[placeholder="Número"]                      ${Customer["number"]}
    Fill Text       css=input[placeholder="Complemento"]                 Apt 80

    
Select Payment Option
    [Arguments]     ${payment}

    IF  "${payment}" == "Dinheiro"

        Click   xpath=(//mt-radio//label)[1]//div

    ELSE IF     "${payment}" == "Cartão de Débito"

        Click   xpath=(//mt-radio//label)[2]//div

    ELSE IF     "${payment}" == "Cartão de Refeição"

        Click   xpath=(//mt-radio//label)[3]//div

    ELSE

        Fail     Incorrect payment type

    END

Pay Order

    Click           text=Concluir Pedido

Order Should Be Completed
    Wait For Elements State         css=p >> text=Seu pedido foi recebido pelo restaurante.     visible     ${DEFAULT_TIMEOUT}