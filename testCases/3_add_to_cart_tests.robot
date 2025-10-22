*** Settings ***
Resource    ../resources/resources.robot

*** Test Cases ***
Add Item To Cart
    [Documentation]    Проверка добавления товара в корзину.
    Open SauceDemo
    Login With Valid Credentials
    Wait Until Page Contains Element    id=add-to-cart-sauce-labs-backpack
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Element   css=.shopping_cart_link
    Page Should Contain     Sauce Labs Backpack
    Close Browser
