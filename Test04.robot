*** Settings ***
Resource     recursos.robot

*** Test Cases ***
Ingresar al sitio y hacer click en el segundo boton
    [Documentation]     https://yacelismata.testrail.io/index.php?/cases/view/1
    abrir navegador     http://winstoncastillo.com/udemy/    gc
    Maximize Browser Window
    Element Should Be Visible   css=body > div.container.align-middle > div > img
    Set Focus To Element    css=body > div.container.align-middle > div > div:nth-child(4) > a:nth-child(2)
    Click Element     css=body > div.container.align-middle > div > div:nth-child(4) > a:nth-child(2)
    Wait Until Element Is Visible   css=#exampleModal > div > div > div.modal-header
    Close Browser