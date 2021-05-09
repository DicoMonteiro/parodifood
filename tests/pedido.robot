***Settings***

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot


***Test Cases***
Deve realizar um novo pedido em Dinheiro
    [Tags]      um_pedido

    ${order_json}        Get JSON        order.json

    Search Restaurant            ${order_json["search_item"]}
    Choose Restaurant            ${order_json}
    FOR     ${order}      IN      @{order_json["products"]}
        Add To Cart             ${order["name"]} 
        Should Add To Cart      ${order["name"]} 
    END

    Go Checkout
    Fill Data Customer           ${order_json["customer"]} 
    Select Payment Option        ${order_json["payment"]}
    Pay Order
    Order Should Be Completed
