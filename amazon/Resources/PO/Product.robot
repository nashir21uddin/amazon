*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PRODUCT_ADD_TO_CART_BUTTON} =    id=add-to-cart-button

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Back to results
    sleep    3s
Add to Cart

    click button    ${PRODUCT_ADD_TO_CART_BUTTON}
