*Settings*
Documentation       Ações da funcionalidade de incluir no carrinho


*Keywords*
Add To Cart
    [Arguments]     ${NAME}

    Log             ${NAME}
    Click           xpath=//span[text()="${NAME}"]/..//a[@class="add-to-cart"]


Should Add To Cart
    [Arguments]         ${NAME}

    Log             ${NAME}
    Wait For Elements State         css=#cart tr >> text=${NAME}       visible     ${DEFAULT_TIMEOUT}


Total Cart Should Be
    [Arguments]         ${TOTAL}

    Log             ${TOTAL}
    Get Text        xpath=//th[contains(text(), "Total")]/../td     contains        ${TOTAL}  