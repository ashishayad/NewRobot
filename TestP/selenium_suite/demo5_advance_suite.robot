*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']    file_path=C:${/}Users${/}ashisy${/}Downloads${/}profile.pdf
    # Choose File    xpath=//input[@type='file']    file_path=C:${/}Mine${/}demo.txt

TC2
    Log To Console    C:\\Mine\\profile.pdf
    Log To Console    C:${/}Mine${/}profile.pdf
    Log To Console    ${EXECDIR}
    Log To Console    ${CURDIR}
    Log To Console    ${TEMPDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}

TC3
    Open Browser    Select From List By Value    (//select[@class="form-control"])    18    browser=Chrome
    Maximize Browser Window
    #wait for page to load
    Set Selenium Implicit Wait    20s
    Go To    http://demo.openemr.io/b/openemr/
    #check for presence of locator in 0.5s
    Input Text    locator=name:authUser    text=admin
    Input Text    locator=name:clearPass    text=pass
    
    # Input Text    locator=name:CompanyName    text=Kongsberg Maritime Ind Pvt Ltd
    # Select From List By Value    name:CompanyEmployees    150
    # Input Text    locator=name:UserPhone    text=909657825
    # #using xpath for class name and occurnace of class in code
    # Click Element    (//div[@class="checkbox-ui"])[2]
    # Click Button    //button[@type="submit"]

#     Task 2 (Important) 
# 1.  Navigate onto http://demo.openemr.io/b/openemr/
# 2.  Update username as admin
# 3.  Update password as pass
# 4.  Select language as English (Indian)
# 5.  Click on the login button
# 6.  Click on Patient  Click New Search
# 7.  Add the first name, last name
# 8.  Update DOB as today's date 
# Use Input text keyword in robot framework 
# Use below in java, C#
# driver.findElement(By.id("form_DOB")).sendKeys("2023-08-08");
# 9.  Update the gender
# 10. . Click on the create new patient button above the form
# 11. . Click on confirm create new patient button.
# 12. . Print the text from alert box (if any error before handling alert add 5 sec wait)
# 13. . Handle alert
# 14. Close the Happy Birthday popup
# 15. Validate the added patient name


TC4
    Open Browser    browser=Chrome
    Maximize Browser Window
    #wait for page to load
    Set Selenium Implicit Wait    20s
    Go To    https://www.malaysiaairlines.com/us/en/home.html
    Click Element    xpath=//span[text()='Accept all cookies']
    #from
    #to

    Execute Javascript    document.querySelector("input[name='dateDeparture']").value='28 Nov 2024'
    Sleep    5s