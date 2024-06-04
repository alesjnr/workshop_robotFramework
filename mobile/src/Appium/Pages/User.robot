*** Settings ***
Library  AppiumLibrary
Resource  ../Components/Click_Element.robot
Resource  ../Resources/User.robot

*** Keywords ***
E clique em Esqueceu o login
    Clicar no elemento  ${INPUT_FORGOT_LOGIN}