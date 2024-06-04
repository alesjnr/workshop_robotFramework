*** Settings ***
Library     AppiumLibrary

*** Keywords ***
Inserir texto
    [Arguments]  ${LOCATOR}     ${TEXT}
    Wait Until Element Is Visible   ${LOCATOR}
    Input Text     ${LOCATOR}     ${TEXT}