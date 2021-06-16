*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Page Loaded
    wait until page contains    Sign-In
    sleep    3s

Loging With Valid Credentials
     [Arguments]    ${Username}    ${Password}
     Fill "Email" Field    ${Username}
     Fill "Password" Field    ${Password}
     Click "Sign In" Button


Fill "Email" Field
    [Arguments]    ${Username}
    log    Filling Email field with ${Username}

Fill "Password" Field
    [Arguments]    ${Password}
    log    Filling Password field with ${Password}

Click "Sign In" Button
    log    Click Submit Button
