*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${BROWSER}                        chrome
${URL}                            https://the-internet.herokuapp.com/

*** Keywords ***

Abrir homepage
    Open Browser                   ${URL}    ${BROWSER}

Fechar navegador
    Close Browser

Verificar se estou na homepage
    Page Should Contain Element    class:heading
    Page Should Contain            Welcome to the-internet

Clicar no link ${LINK_PAGE}
    Click Link                     link:${LINK_PAGE}

Verificar se estou na página de Login
    Page Should Contain            Login Page

Verificar se estou na página Horizontal Slider
    Page Should Contain            Horizontal Slider

Inserir email e senha
    Input Text                     id:username        tomsmith
    Input Password                 id:password        SuperSecretPassword!

Clicar no botão Login
    Click Element                  class:radius

Verificar página de login com sucesso
    Page Should Contain            You logged into a secure area!

Mover controle deslizante 8 vezes
    Wait Until Element Is Visible    xpath://input[@type='range']
    # Press Keys                       xpath://input[@type='range']        ARROW_RIGHT
    Press Keys                       xpath://input[@type='range']        ARROW_DOWN
    Press Keys                       xpath://input[@type='range']        ARROW_UP
    Press Keys                       xpath://input[@type='range']        ARROW_UP
