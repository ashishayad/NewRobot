*** Settings ***
Library    SeleniumLibrary

Test Teardown    Close Browser
*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    #click on Go
    Click Element    //img[@alt="Go"]
    ${actual_alert_text}    Handle Alert    timeout=10s
    Log To Console    ${actual_alert_text}
    Should Be Equal As Strings    ${actual_alert_text}    Customer ID${space}${space}cannot be left blank.
    #assert the alert text - Customer ID  cannot be left blank.