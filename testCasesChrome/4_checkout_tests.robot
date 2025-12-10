*** Settings ***
Resource    ../resources/resources_chrome.robot

*** Test Cases ***
Complete Checkout Process
    [Documentation]    Проверка успешного оформления заказа.
    Open SauceDemo
    Login With Valid Credentials
    Click Button    id=add-to-cart-sauce-labs-bike-light
    Click Element   css=.shopping_cart_link
    Wait Until Element Is Visible    id=checkout    timeout=5s
    Click Button    id=checkout
    Input Text      id=first-name    Test
    Input Text      id=last-name     User
    Input Text      id=postal-code   12345
    Click Button    id=continue
    Wait Until Page Contains    Payment Information
    Click Button    id=finish
    Wait Until Page Contains    Thank you for your order!
    Page Should Contain     Thank you for your order!
    Close Browser
