*** Settings ***
Library    SeleniumLibrary
# robot -d results tests/locators.robot
*** Variables ***
${URL} =    http://amazon.com
${BROWSER} =    chrome

*** Test Cases ***
Should be able to do something
     Open Browser    ${URL}    ${BROWSER}
     mouse over    id=nav-link-accountList
     sleep    2s
     click link    default=/gp/registry/wishlist?triggerElementID=createList&ref_=nav_ListFlyout_create
     sleep    2s
     close browser
