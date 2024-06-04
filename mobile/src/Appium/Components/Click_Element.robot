*** Settings ***
Library  AppiumLibrary

*** Keywords ***
Clicar no elemento
    [Arguments]  ${LOCATOR}
    Wait Until Element Is Visible   ${LOCATOR}
    Click Element   ${LOCATOR}