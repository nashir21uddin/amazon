*** Settings ***
Documentation    This is some basic info about the whole suits
Resource    ../Resources/Common.robot
Resource    ../Resources/AmazonApp.robot
Test Setup  Begin Web Test
Test Teardown   End Web Test

*** Variables ***
${BROWSER} =    chrome
${START_URL} =    http://www.amazon.com
${SEARCH_TERM} =    Ferrary 458
${LOGIN_EMAIL} =    admin@robotframeworktutorial.com
${LOGIN_PASSWORD} =    myPassword1

*** Test Cases ***
Should be able to login
    AmazonApp.Login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}

Logged out user should be able to search for products
     [Tags]    Current
     AmazonApp.Search for Products

Logged out user should be able to view a products
     [Tags]    Smoke
     AmazonApp.Search for Products
     AmazonApp.Select Product from Search Results

Logged out user should be able to add product to cart
    [Tags]    Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user should be ask to sing in to check out
    [Tags]    Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout






























