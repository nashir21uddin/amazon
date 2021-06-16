*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    input text    id=twotabsearchtextbox    $ {SEARCH_TERM}

Submit Search
    click button    xpath=//*[@id="nav-search-submit-button"]
