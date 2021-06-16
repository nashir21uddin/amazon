*** Settings ***


*** Variables ***
${MY_VARIABLE} =    Hello there    This is value 2    I am item 3

*** Test Cases ***
Variable demonstrattion
    log    ${MY_VARIABLE}[0]
    log    ${MY_VARIABLE}[1]
    log    ${MY_VARIABLE}[2]

Variable demonstrattion 2
    @{my_list_variable} =    create list    Item 1    Item 2    item 3
    log     ${my_list_variable}[0]
    log     ${my_list_variable}[1]
    log     ${my_list_variable}[2]
