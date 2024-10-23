*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://datatables.net/extensions/select/examples/checkbox/checkbox.html
    
    Select From List By Value    (//select[@class="dt-input"])    100

    FOR    ${i}    IN RANGE    1    58
        ${count}    Get Text    //table[@id='example']/tbody/tr[${i}]/td[2]
        Log To Console    ${count}
        
    END
    
TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://datatables.net/extensions/select/examples/checkbox/checkbox.html
    

    FOR    ${page}    IN RANGE    1    7
        ${count}    Get Text    //table[@id='example']/tbody/tr[${i}]/td[2]
        Log To Console    ${count}
        
    END
    

TC3
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://datatables.net/extensions/select/examples/checkbox/checkbox.html

    ${output}    Run Keyword And Ignore Error    Click Element    css=[area-label='Next']${/}
    Log To Console    ${output}

    ${output}    Run Keyword And Ignore Error    Element Should Be Enabled    css=[area-label='Next']${/}
    Log To Console    ${output}

    ${output}    Get Element Attribute    css=[area-lable='Next']${/}    tabindex
    LOg ${output}
    ${attribute}    Get
    