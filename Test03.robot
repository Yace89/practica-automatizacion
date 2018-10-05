*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${navegador}    gc

*** Keywords ***
abrir navegador
    Open Browser    http://automationpractice.com/index.php     ${navegador}

*** Test Cases ***
Error en Formulario
    abrir navegador
    Maximize Browser Window
    Element Should Be Visible     css=#header_logo > a > img
    Click Element    css=#contact-link > a
    Click Element   css=#id_contact
    Click Element   css=#id_contact > option:nth-child(2)
    Input Text    css=#message     Mensaje
    Set Focus To Element    css=#submitMessage > span
    Click Element    css=#submitMessage > span
    Element Should Be Visible     css=#center_column > div > ol > li
    Close Browser

Enviar formulario
    abrir navegador
    Maximize Browser Window
    Element Should Be Visible     css=#header_logo > a > img
    Click Element    css=#contact-link > a
    Click Element   css=#id_contact
    Click Element   css=#id_contact > option:nth-child(2)
    Input Text     css=#email      email@email.com
    Input Text    css=#message     Mensaje
    Set Focus To Element    css=#submitMessage > span
    Click Element    css=#submitMessage > span
    Element Should Be Visible        css=#center_column > p
    Close Browser