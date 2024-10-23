*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    #launch chrome
    #get title and store
    #print it
    Open Browser    browser=Chrome    url=https://portal.mediassist.in/Home.aspx
    ${title}    Get Title
    Log To Console    ${title}
    #get the url and print it
    #get the page source and print it
    ${location}    Get Location
    Log To Console    ${location}
    ${source}    Get Source
    Log To Console    ${source}

TC2
    Open Browser    browser=Chrome
    Maximize Browser Window
    Go To    https://portal.mediassist.in/Home.aspx
    Input Text    locator=id:username    text=94315@Kongsberg
    Input Password    locator=id:password    password=Zbook5665
    Click Button    locator=signinBtn
    sleep    10s

TC3
    Open Browser    browser=Chrome
    Maximize Browser Window
    #wait for page to load
    Set Selenium Implicit Wait    20s
    Go To    https://www.facebook.com/
    #check for presence of locator in 0.5s
    Click Element    link=Create new account
    Input Text    locator=name:firstname    text=Ashish
    Input Text    locator=name:lastname    text=Yadav
    Click Element    xpath=//input[@value='-1']
    Radio Button Should Be Set To    group_name=sex    value=-1
    Select From List By Index    id:day    2
    #Selecting value by index number
    #Select From List By Label    id:day    19
    Select From List By Label    id:month    Nov
    Select From List By Label    id:year    1990    
    @{Items}    Create List    19
    #Select From List By Label    locator=id:day    labels=(19,)
    #Input Text    locator=Month    text=11
    #Input Text    locator=Year    text=1990

TC4
    Open Browser    browser=Chrome
    Maximize Browser Window
    #wait for page to load
    Set Selenium Implicit Wait    20s
    Go To    https://www.salesforce.com/in/form/signup/freetrial-sales/
    #check for presence of locator in 0.5s
    Input Text    locator=name:UserFirstName    text=Ashish
    #Input text using xpath
    Input Text    xpath=//input[contains(@id,'UserLastName')]    Yadav
    #Input Text    locator=name:UserLastName    text=Yadav
    Input Text    locator=name:UserEmail    text=ashish.test@gmail.com
    Select From List By Value    name:UserTitle    IT_Manager_AP
    Input Text    locator=name:CompanyName    text=Kongsberg Maritime Ind Pvt Ltd
    Select From List By Value    name:CompanyEmployees    150
    Input Text    locator=name:UserPhone    text=909657825
    #using xpath for class name and occurnace of class in code
    Click Element    (//div[@class="checkbox-ui"])[2]
    Click Button    //button[@type="submit"]




