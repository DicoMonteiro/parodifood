***Settings***
Library     Browser


***Test Cases***
Buscar um restaurante
    New Browser     chromium    False
    # New Page        https://playwright.dev
    New Page        http://parodifood.qaninja.academy/
    # Checkpoint
    Get Text        css=span  contains    Nunca foi tão engraçado pedir comida

    Click           text=Estou com fome!
    Get Text        css=h1 strong       contains    Ta na hora de matar a fome!

    Click           css=.search-link
    Fill Test       css=input[formcontrolname="searchControl"]      Debuger

    # Sleep           10

    Wait For Elements State     css=.place-info-box     visible     10

    Get Text        css=.place-info-box         contains        DEBUGER KING