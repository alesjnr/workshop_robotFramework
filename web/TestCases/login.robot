*** Settings ***
Resource    ../Pages/login.robot

*** Keywords ***

CT: Logar com sucesso
    Dado que o usuário esteja na home
    Quando informar credenciais válidas
    Então realizará login com sucesso

