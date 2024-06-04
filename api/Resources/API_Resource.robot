*** Settings ***
Documentation    Suits de testes de api https://reqres.in/
Library    RequestsLibrary

*** Variables ***
${URL}    https://reqres.in/api

*** Keywords ***
# --- Dado ---
Dado que estou conectado na API
    [Arguments]    ${FINAL_ENDPOINT}
    ${ALIAS}    Create Session    alias=list_users    url=${URL}/${FINAL_ENDPOINT}
    Session Exists    alias=list_users
# --- Quando ---
Quando eu envio a requisição para consultar usuários
    ${RESPONSE}    GET On Session    alias=list_users    url=${URL}/users?page=2
    Set Test Variable    ${RESPONSE}

Quando eu envio a requisição para criar um novo usuário
    ${DADOS}        Create Dictionary   name=Rafael     job=QA
    ${RESPONSE}     POST   url=${URL}/users/${DADOS}

Quando eu envio a requisição para excluir um usuário
    ${RESPONSE}     DELETE      url=${URL}/users/2

Quando eu envio a requisição para alterar o job de um usuário
    ${DADOS}        Create Dictionary   name=Rafael     job=Tester
    ${RESPONSE}     PUT   url=${URL}/users/5/${DADOS}
# --- Então ---
Então a requisição deve ocorrer com sucesso
    [Arguments]    ${status_code}
    Status Should Be    ${status_code}
# --- E ---
E deve ser retornado a quantidade de registros corretamente
    [Arguments]    ${qtde_esperada}
    ${qtde_retornada}    Get Length    ${RESPONSE.json()['data']}    #robotcode:ignore
    Should Be Equal    ${qtde_esperada}    ${qtde_retornada}