*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Search Completed
   wait until page contains    results for "$ {SEARCH_TERM}"
   sleep    3s

Click Product Link

    click link      css=#search > div.s-desktop-width-max.s-opposite-dir > div > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(10) > div > span > div > div > div:nth-child(3) > h2 > a