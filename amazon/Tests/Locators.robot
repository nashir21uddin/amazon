*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/locators.robot

*** Variables ***


*** Test Cases ***
Should be able to search for product
    open browser    http://www.amazon.com   chrome
    sleep    3s
    click image    Boys
    sleep    2s

*** Keywords ***
