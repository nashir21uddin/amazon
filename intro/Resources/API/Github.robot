*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary    # only used to display something we get back from API test

*** Variables ***


*** Keywords ***
Check Github Username
    # Create the Session
    Create Session    my_github_session    https://api.github.com

    # Make the call (and capture the response in a variable)
    ${response} =    GET On Session    my_github_session    users/robotframeworktutorial

    # Check the Response status
    should be equal as strings    ${response.status_code}    200

    # Check the Response body
    ${json} =    set variable    ${response.json()}
    should be equal as strings    ${json['login']}    robotframeworktutorial
    LOG    ${json}

Display Emoji
    # Create the session
    Create Session    my_github_session    https://api.github.com

    # Make the call (and capture the response in a variable)
    ${response} =    GET On Session    my_github_session    emojis

    # Check the Respose status
    should be equal as strings    ${response.status_code}    200

    # Check the Response body
    ${json} =    set variable    ${response.json()}
    ${emoji_url} =    set variable    ${json['aerial_tramway']}
    open browser    ${emoji_url}    chrome

