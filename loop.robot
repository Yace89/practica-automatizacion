*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${navegador}    gc
${homepage}     automationpractice.com/index.php
${esquema}     http
@{nombre_de_elementos}    //*[@id="homefeatured"]/li[1]/div/div[1]/div/a[2]/span     //*[@id="homefeatured"]/li[2]/div/div[1]/div/a[2]/span    //*[@id="homefeatured"]/li[3]/div/div[1]/div/a[2]/span   //*[@id="homefeatured"]/li[4]/div/div[1]/div/a[2]/span      //*[@id="homefeatured"]/li[5]/div/div[1]/div/a[2]/span      //*[@id="homefeatured"]/li[6]/div/div[1]/div/a[2]/span      //*[@id="homefeatured"]/li[7]/div/div[1]/div/a[2]/span
@{elementos_hover}     //*[@id="homefeatured"]/li[1]/div/div[1]/div/a[1]/img    //*[@id="homefeatured"]/li[2]/div/div[1]/div/a[1]/img    //*[@id="homefeatured"]/li[3]/div/div[1]/div/a[1]/img    //*[@id="homefeatured"]/li[4]/div/div[1]/div/a[1]/img     //*[@id="homefeatured"]/li[5]/div/div[1]/div/a[1]/img    //*[@id="homefeatured"]/li[6]/div/div[1]/div/a[1]/img    //*[@id="homefeatured"]/li[7]/div/div[1]/div/a[1]/img
${contador}    0

*** Keywords ***
abrir homepage
    Open Browser    ${esquema}://${homepage}    ${navegador}

*** Test Cases ***
C001 Abir elementos del homepages
    abrir homepage
    Maximize Browser Window
    :FOR    ${elemento}     IN      @{nombre_de_elementos}
    \    Log to console     ${contador}
    \    Mouse Over     xpath=@{elementos_hover}[${contador}]
    \    Wait Until Element Is Visible    xpath=${elemento}
    \    Click Element      xpath=${elemento}
    \    Wait Until Element Is Visible      xpath=//*[@id="index"]/div[2]/div/div/a
    \    Click element     xpath=//*[@id="index"]/div[2]/div/div/a
    \    ${contador}=    Evaluate    ${contador} + 1
    Close Browser

