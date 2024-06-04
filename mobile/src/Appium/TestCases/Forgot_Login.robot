*** Settings ***
Documentation  Validação automatizada da feature de recuperação de login
Resource  ../Pages/Home.robot
Resource  ../Pages/User.robot
Resource  ../Pages/Forgot_Login.robot

*** Keywords ***

CT: Recuperar login com sucesso
    Dado que o usuário esteja na home
    E clique em ENTRAR
    E clique em Esqueceu o login
    Quando preencher o CNPJ corretamente
    Então uma mensagem de sucesso será exibida