*** Settings ***
Documentation    These are some XML tests
Resource    ../Resources/XML/Breakfast_Menu.robot

# Many ways to run, those would be command line to run the test
# robot -d results/xml tests/XML_Tests.robot
# robot -d results/xml -i XML tests
# robot -d rusults tests

*** Variables ***


*** Test Cases ***
Verify Menu Count
    [Tags]    XML
    Breakfast_Menu.Should be one menu in the file

Verify Root
    [Tags]    XML
    Breakfast_Menu.Verify Menu Name

Verify Food Count
    [Tags]    XML
    breakfast_menu.verify food count

Verify First Food
    [Tags]    XML
    Breakfast_Menu.Verify First Food Name
    Breakfast_Menu.Verify First Food Price
    Breakfast_Menu.Verify First Food Calories

Add a Food
    [Tags]    XML
    Breakfast_Menu.Add New food


