***Settings***

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot


***Test Cases***
Deve buscar um único restaurante
    
    Search Restaurant       Debuger
    Restaurant Should Be Visible    DEBUGER KING        ${ELEMENT}        ${ELEMENT_INFO_BOX}
    Verify Quantities Restaurants        1       ${ELEMENT}       ${ELEMENT_INFO_BOX}


Deve buscar por categoria

    Search Restaurant       Cafe
    Restaurant Should Be Visible     STARBUGS COFFEE    ${ELEMENT}       ${ELEMENT_INFO_BOX}


Deve buscar todos os restaurantes

    Search Restaurant       a
    Verify Quantities Restaurants       5       ${ELEMENT}      ${ELEMENT_INFO_BOX}
