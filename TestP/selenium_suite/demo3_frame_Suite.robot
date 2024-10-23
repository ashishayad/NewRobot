*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    #enter userid as john123
    Select Frame    xpath=//frame[@name="login_page"]
    Input Text    name=fldLoginUserId    jack123
    Click Element    xpath=//a[@class="btn btn-primary login-btn"]

    Unselect Frame

