*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

# Copy/pasted the line below into Terminal to execute:
# robot -d results tests/amazon.robot

*** Variables ***



*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    OPEN BROWSER    http://www.amazon.com    chrome
    WAIT UNTIL PAGE CONTAINS    amazon
    sleep    2s
    input text    id=twotabsearchtextbox    Ferrari 458
    sleep    2s
    click button    xpath=//*[@id="nav-search-submit-button"]
    sleep    2s
    wait until page contains    results for "Ferrari 458"
    sleep    2s
    click link    css=#search > div.s-desktop-width-max.s-opposite-dir > div > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(9) > div > span > div > div > div:nth-child(3) > h2 > a
    sleep    2s
    wait until page contains    Back to results
    sleep    2s
    click button    id=add-to-cart-button
    sleep    2s
    wait until page contains    Added to Cart
    sleep    2s
    click link    id=hlb-ptc-btn-native
    page should contain element    Sign-In
    sleep    2s 

    close browser

