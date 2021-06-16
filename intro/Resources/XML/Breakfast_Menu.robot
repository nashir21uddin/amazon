*** Settings ***
Library    XML

*** Variables ***
${XML_MENU_PATH} =    inputs/xml/menu.xml
${EXPECTED_MENU_COUNT} =    1
${EXPECTED_FOOD_COUNT} =    5

*** Keywords ***
Should be one menu in the file
    # since we're passing the file name with on element, we get
    # a count of how many elements are in the file
    ${menu_count} =    GET ELEMENT COUNT    ${XML_MENU_PATH}
    should be equal as numbers    ${menu_count}    ${EXPECTED_MENU_COUNT}

Verify Menu Name
    ${root} =    parse xml    ${XML_MENU_PATH}
    should be equal    ${root.tag}    breakfast_menu

Verify Food Count
    # This time, we pass the element name we want to count along with the file name
    ${food_count} =    GET ELEMENT COUNT    ${XML_MENU_PATH}    food
    should be equal as numbers    ${food_count}    ${EXPECTED_FOOD_COUNT}

Verify First Food Name
    # I would have thought I need to pass breakfast_menu/food[1]/name
    # but that is not the case. Only pass the name of the desired element
    ${first_food_name} =  GET ELEMENT    ${XML_MENU_PATH}    food[1]/name
    should be equal as strings    ${first_food_name.text}    Belgian Waffles

Verify First Food Price
    ${first_food_price} =    GET ELEMENT    ${XML_MENU_PATH}  food[1]/price
    should be equal as strings    ${first_food_price.text}    $5.95

Verify First Food Calories
    ${first_food_calories} =    GET ELEMENT    ${XML_MENU_PATH}    food[1]/calories
    should be equal as strings   ${first_food_calories.text}    650

Add New food
    ${root} =    PARSE XML    ${XML_MENU_PATH}
    add element    ${root}    <food></food>
    add element    ${root}    <name>Grilled Cheese Sandwich</name>    xpath=food[6]
    add element    ${root}    <price>$2.95</price>    xpath=food[6]
    add element    ${root}    <description>Yummy melted cheese on grilled sourdough slice</description>    xpath=food[6]
    add element    ${root}    <calories>300</calories>    xpath=food[6]
    save xml       ${root}    ${XML_MENU_PATH}

Verify New Food Exists
    element should exist      ${XML_MENU_PATH}    food[6]