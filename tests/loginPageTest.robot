*** Settings ***
Resource          ../resource/Resource.robot

Test setup      Abrir homepage

Test teardown   Fechar navegador

*** Test Case ***
 Cenário 1: Login com sucesso
     Dado que estou na homepage
     Quando eu clicar no link Form Authentication
     Então a página de login é carregada
     Quando eu inserir email  e senha
     E clicar no botão login
     Então o login é realizado com sucesso


*** Keywords ***

Dado que estou na homepage
    Verificar se estou na homepage

Quando eu clicar no link ${FORM_AUTHENTICATION}
    Clicar no link ${FORM_AUTHENTICATION}

Então a página de login é carregada
    Verificar se estou na página de Login

Quando eu inserir email e senha
    Inserir email e senha

E clicar no botão login
    Clicar no botão Login

Então o login é realizado com sucesso
    Verificar página de login com sucesso
