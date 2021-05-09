*Settings*
Documentation       Ações da funcionalidade de busca de restaurantes


***Variables***

${ELEMENT}              css=.place-info-box
${ELEMENT_INFO_BOX}     css=div[class="place-info-box"][style="opacity: 1;"]

***Keywords***

Search Restaurant
    [Arguments]     ${TARGET}
    Click           text=Estou com fome!
    Get Text        css=h1 strong       contains    Ta na hora de matar a fome!

    Click           css=.search-link
    Fill Text       css=input[formcontrolname="searchControl"]      ${TARGET}


Restaurant Should Be Visible
    [Arguments]         ${NAME}     ${ELEMENT}      ${ELEMENT_INFO_BOX}
    Wait For Elements State     ${ELEMENT_INFO_BOX}    visible     ${DEFAULT_TIMEOUT}
    Get Text                    ${ELEMENT}         contains        ${NAME}

Verify Quantities Restaurants
    [Arguments]         ${QUANTITY}     ${ELEMENT}   ${ELEMENT_INFO_BOX}
    Wait For Elements State     ${ELEMENT_INFO_BOX}     visible     ${DEFAULT_TIMEOUT}
    Get Element Count           ${ELEMENT}     equal       ${QUANTITY}

Choose Restaurant
    [Arguments]         ${var}    

    Click           text=${var["restaurant"]}
    Wait For Elements State         css=#detail     visible     ${DEFAULT_TIMEOUT}
    Get Text        css=#detail     contains        ${var["desc"]}