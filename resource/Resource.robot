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

Clicar no link ${FORM_AUTHENTICATION}
    Click Link                     link:${FORM_AUTHENTICATION}

Verificar se estou na página de Login
    Page Should Contain            Login Page

Inserir email e senha
    Input Text                     id:username        tomsmith
    Input Password                 id:password        SuperSecretPassword!

Clicar no botão Login
    Click Element                  class:radius

Verificar página de login com sucesso
    Page Should Contain            You logged into a secure area!
