*** Settings ***
Documentation    Suits de testes de api https://reqres.in/
Resource    ../Resources/API_Resource.robot

*** Test Cases ***
CT01: Realizar uma requisição GET consultando lista de usuários
    [Tags]    S01CT01
    [Documentation]    CARD-XXX
    Dado que estou conectado na API    users
    Quando eu envio a requisição para consultar usuários
    Então a requisição deve ocorrer com sucesso    200
    E deve ser retornado a quantidade de registros corretamente    ${6}

CT02: Realizar uma requisição POST criando um novo usuário
    [Tags]    S01CT02
    [Documentation]    CARD-XXX
    Dado que estou conectado na API    users
    Quando eu envio a requisição para criar um novo usuário
    Então a requisição deve ocorrer com sucesso    201

CT03: Realizar uma requisição DELETE apagando um usuário
    [Tags]    S01CT03
    [Documentation]    CARD-XXX
    Dado que estou conectado na API    users/2
    Quando eu envio a requisição para excluir um usuário
    Então a requisição deve ocorrer com sucesso    204

CT04: Realizar uma requisição PUT alterando job de um usuário
    [Tags]    S01CT04
    [Documentation]    CARD-XXX
    Dado que estou conectado na API    users/2
    Quando eu envio a requisição para alterar o job de um usuário
    Então a requisição deve ocorrer com sucesso    204