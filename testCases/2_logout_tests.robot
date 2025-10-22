*** Settings ***
Resource    ../resources/resources.robot

*** Test Cases ***
Logout After Login
    [Documentation]    Проверка выхода из системы.
    Open SauceDemo
    Login With Valid Credentials
    Wait Until Element Is Visible    id=react-burger-menu-btn
    Click Button    id=react-burger-menu-btn
    Wait Until Element Is Visible    id=logout_sidebar_link
    Click Link      id=logout_sidebar_link
    Wait Until Element Is Visible    id=login-button
    Page Should Contain Element      id=login-button
    Close Browser
