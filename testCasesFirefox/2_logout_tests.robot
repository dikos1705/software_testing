*** Settings ***
Resource    ../resources/resources_firefox.robot

*** Test Cases ***
Logout After Login
    [Documentation]    Проверка выхода из системы.
    Open SauceDemo
    Login With Valid Credentials

    Wait Until Element Is Visible    id=react-burger-menu-btn    10s
    Click Button    id=react-burger-menu-btn
    Wait Until Element Is Visible    id=logout_sidebar_link    10s
    Click Element   id=logout_sidebar_link

    Wait Until Element Is Visible    id=login-button    10s
    Page Should Contain Element    id=login-button
    Close Browser
