*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    OPEN BROWSER    about:blank    ${BROWSER}
#    maximize browser window

End Web Test
    close all browsers