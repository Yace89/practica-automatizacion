*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${navegador}    gc

*** Keywords ***
abrir navegador
    Open Browser    http://www.google.com   ${navegador}

*** Test Cases ***
Verificar que se puede buscar una palabra en google
    [Documentation]     https://yacelismata.testrail.io/index.php?/cases/view/1
    abrir navegador
    Element Should Be Visible   hplogo
    Input Text    lst-ib    Hola
    Click Element   css=#tsf > div.tsf-p > div.jsb > center > input[type="submit"]:nth-child(1)
    Page Should Contain     Hola
    Close Browser
