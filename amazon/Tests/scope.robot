*** Settings ***
Resource    ../Resources/scope.robot

*** Variables ***
${MY_VARIABLE} =    From the script file

*** Test Cases ***
Create and log a variable
#    ${my_variable} =    set variable    Some information
    LOG    ${MY_VARIABLE}

Access a variable
    LOG    ${MY_VARIABLE}

*** Keywords ***

