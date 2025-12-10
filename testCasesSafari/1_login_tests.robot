*** Settings ***
Resource    ../resources/resources_safari.robot

*** Test Cases ***
Login With Valid User
    [Documentation]    Проверка успешного входа на сайт с правильными данными.
    Open SauceDemo
    Login With Valid Credentials
    Wait Until Page Contains Element    xpath=//span[text()='Products']
    Page Should Contain Element         xpath=//span[text()='Products']
    Close Browser

Login With Invalid User
    [Documentation]    Проверка ошибки при вводе неправильного пароля.
    Open SauceDemo
    Input Text    id=user-name    standard_user
    Input Text    id=password     wrong_password
    Click Button  id=login-button
    Wait Until Page Contains Element    css=.error-message-container
    Page Should Contain  Epic sadface: Username and password do not match
    Close Browser
