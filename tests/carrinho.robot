***Settings***

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

# *Variables*

# ${cart_json}        Get JSON        cart.json


***Test Cases***
Deve adicionar um item ao carrinho
    [Tags]      unico_item

    ${cart_json}        Get JSON        cart.json

    Search Restaurant            ${cart_json["search_item"]}
    Choose Restaurant            ${cart_json}
    Add To Cart                  ${cart_json["products"][2]["name"]}
    Should Add To Cart           ${cart_json["products"][2]["name"]}
    Total Cart Should Be         15,60


Deve adicionar 3 itens ao carrinho
    [Tags]          temp

    ${cart_json}        Get JSON        cart.json

    Search Restaurant               ${cart_json["search_item"]}
    Choose Restaurant               ${cart_json}


    FOR     ${product}      IN      @{cart_json["products"]}
        Add To Cart             ${product["name"]} 
        Should Add To Cart      ${product["name"]} 
    END

    Total Cart Should Be        ${cart_json["total"]}
