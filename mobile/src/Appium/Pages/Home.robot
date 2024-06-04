*** Settings ***
Library  AppiumLibrary
Resource  ../Resources/Home.robot

*** Keywords ***
E clique em ENTRAR
    Wait Until Element Is Visible    ${ENTER_HOME_BUTTON}

Dado que o usuário esteja na home
    Wait Until Element Is Visible   locator

Então uma mensagem de sucesso será exibida
    Wait Until Page Contains    text