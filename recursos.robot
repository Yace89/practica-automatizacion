*** Settings ***
Library     SeleniumLibrary
Library     Screenshot


*** Variables ***
${navegador}    gc


*** Keywords ***
abrir navegador
    [Arguments]    ${URL}   ${navegador1}
    Open Browser    ${URL}     ${navegador1}
    Screenshot.Set Screenshot Directory    ../Screenshots
