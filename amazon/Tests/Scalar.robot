*** Settings ***


*** Variables ***
${MY_VARIABLE} =   Hello there

*** Test Cases ***
Set a variable in the test case
    [Tags]    Current
    ${my_new_variable} =    set variable  Something else meaningful
    log    ${my_new_variable}

Variables demonstration 1
    log     ${MY_VARIABLE}

Variables demonstration 2
    log     ${MY_VARIABLE}

*** Keywords ***

