*** Settings ***
Library    ../../.venv/Lib/site-packages/robot/libraries/Collections.py

*** Variables ***
${BROWSER_NAME}    Chrome
@{COLORS}    red     orange    yellow
&{MY_DETAILS}    my_name=bala    role=trainer    mobile=9895448

*** Test Cases ***
TC1
    Log To Console    ${BROWSER_NAME}

TC2
    Log To Console    ${BROWSER_NAME}
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]
    #create list and load mango, banana, ornage
    @{fruits}    Create List    mango    banana    ornage
    Log To Console    ${fruits}
    Log To Console    ${fruits}[2]
#append item chiku to list
#insrest guava at index 2
#remove mango
    Append To List    ${fruits}    chiku
    Log To Console    ${fruits}
    Insert Into List    ${fruits}    2    guava
    Log To Console    ${fruits}
    Remove From List    ${fruits}    0
    Log To Console    ${fruits}

#get lenght
    ${Count}    Get Length    ${fruits}
    Log To Console   ${Count}

TC3
#using for in range
    FOR    ${i}    IN RANGE    0    5
        Log    ${i}
        Log To Console    ${i}
    END

#print item from list
     @{fruits}    Create List    mango    banana    ornage
     FOR    ${val}    IN    @{fruits}
         Log To Console    ${val}  
     END

TC4
    Log To Console    ${MY_DETAILS}
    Log To Console    ${MY_DETAILS}[mobile]

#Create dic locally

TC5
    &{android_dic}    Create Dictionary    Platformname=android    Devicename=oneplus    App=zomato
        Log To Console    ${android_dic}
    ${output}    Get From Dictionary    ${android_dic}    Platformname
        Log To Console    ${output}