*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =    id=page-top

*** Keywords ***
Navigate To
    go to    ${FRONT_OFFICE_URL}

Verify Page Loaded
    wait until page contains element    ${LANDING_NAVIGATION_ELEMENT}