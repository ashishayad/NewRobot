*** Settings ***

Library    ../../.venv/Lib/site-packages/robot/libraries/DateTime.py
Library    ../../.venv/Lib/site-packages/robot/libraries/String.py

*** Test Cases ***
TC1
  Log To Console    message=Ashish Yadav

TC2
  ${session}    Set Variable    Robot Demo   
  Log To Console    ${session} 

TC3
    ${radius}    Set Variable    10
    #calculate area of circule and print it
    ${area}    Evaluate    3.14*${radius}*${radius}
    Log To Console    ${area}

TC4
    ${date}    Get Current Date
    Log To Console    ${date}

TC5
    Set Local Variable    ${email}    ashish.yadav@gmail.com
    ${removed}    Remove String    ${email}    @
    Log To Console    ${removed}
    ${removed}    Fetch From Left    ${email}    @
    Log To Console    ${removed}
    ${removed}    Fetch From Right    ${email}    @
    Log To Console    ${removed}