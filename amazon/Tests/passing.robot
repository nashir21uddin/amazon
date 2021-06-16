*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
User can search for products
    ${url_and_browser} =    set variable    http://www.google.com   firefox
#    Begin Web Test    http://www.google.com   firefox
    Begin Web Test    ${url_and_browser}

*** Keywords ***
Begin Web Test
    [Arguments]    ${url_and_browser}
    OPEN BROWSER    ${url_and_browser}[0]    ${url_and_browser}[1]
    sleep    2 s
    close browser

#Begin Web Test
#    [Arguments]    ${url}    ${browser}
#    OPEN BROWSER    ${url}    ${browser}
#    sleep    2 s
#    close browser



