*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${navegador}    gc

*** Keywords ***
abrir navegador
    Open Browser    http://winstoncastillo.com/udemy/     ${navegador}

*** Test Cases ***
Ingresar al sitio y hacer click a un boton
    abrir navegador
    Maximize Browser Window
    Element Should Be Visible   css=body > div.container.align-middle > div > img
    Set Focus To Element     css=body > div.container.align-middle > div > div:nth-child(4) > a:nth-child(1)
    Click Element   css=body > div.container.align-middle > div > div:nth-child(4) > a:nth-child(1)
    Close Browser