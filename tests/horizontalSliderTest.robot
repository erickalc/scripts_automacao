*** Settings ***
Resource          ../resource/Resource.robot

Test setup        Abrir homepage
# Test teardown     Fechar navegador

*** Variables ***

*** Test Case ***
Cenário 1: Mova o controle deslizante até a posição 8
    Dado que estou na homepage
    Quando eu clicar no link Horizontal Slider
    Então a página Horizontal Slider deve ser exibida
    Quando eu mover o controle deslizante 8 vezes
    # Então o número 4 deve ser exibido como resultado

*** Keywords ***

Dado que estou na homepage
    Verificar se estou na homepage

Quando eu clicar no link ${LINK_PAGE}
    Clicar no link ${LINK_PAGE}

Então a página Horizontal Slider deve ser exibida
    Verificar se estou na página Horizontal Slider

Quando eu mover o controle deslizante 8 vezes
    Mover controle deslizante 8 vezes
