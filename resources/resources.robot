*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}              https://www.saucedemo.com/
${USERNAME}         standard_user
${PASSWORD}         secret_sauce
${BROWSER}          chrome


*** Keywords ***
Open SauceDemo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    5

Login With Valid Credentials
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button

Close Browser
    Close All Browsers
