*** Settings ***
Documentation   Gerenciamento de casos de teste
Resource        ../TestCases/Forgot_Login.robot
Resource        ../Config/Config.robot

Test Setup      Iniciar aplicativo
Test Teardown   Fechar aplicativo

*** Test Cases ***
Recuperar login
    CT: Recuperar login com sucesso