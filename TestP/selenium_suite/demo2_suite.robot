*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.db4free.net/
    Click Element    partial link:phpMyAdmin
    #Click Element    link=phpMyAdmin »
    Switch Window    phpMyAdmin
    Input Text    id=input_username    Admin
    Input Text    id=input_password    admin123
    Click Element    input_go
    ${title}    Get Title
    Close Window
    Switch Window    db4free.net - MySQL Database for free
    Log To Console    ${title}
    [Teardown]    Close Browser

