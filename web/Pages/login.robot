*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login.robot

*** Keywords ***
Dado que o usuário esteja na home
    Open Browser  https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    sleep   3s

Quando informar credenciais válidas
    Input Text  ${UsernameField}   standard_user
    Input Text  //input[@id= 'password']    secret_sauce
    Sleep   3s

Então realizará login com sucesso
    Click Button    //input[@id= 'login-button']
    Wait Until Element Is Visible  //div[@class= 'app_logo'][contains(., 'Swag Labs')]  10s
    Sleep  3s
