*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}              https://www.saucedemo.com/
${USERNAME}         standard_user
${PASSWORD}         secret_sauce

${BROWSER}          firefox
${BROWSERSTACK_USERNAME}    diaskasimzhan_VUQrv0
${BROWSERSTACK_ACCESS_KEY}  1pwxKX8vPfaCFrsVcJPp
${REMOTE_URL}    https://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub


*** Keywords ***
Open SauceDemo
    Open Browser    ${URL}    ${BROWSER}
    ...    remote_url=${REMOTE_URL}
    ...    desired_capabilities=browser:Firefox,browser_version:latest,os:Windows,os_version:11,build:HW3-Firefox,project:SauceDemo

    Maximize Browser Window
    Set Selenium Implicit Wait    5


Login With Valid Credentials
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password     ${PASSWORD}
    Click Button  id=login-button


Close Browser
    Close All Browsers
