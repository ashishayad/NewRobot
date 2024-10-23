*** Settings ***
Library
Library    ../../.venv/Lib/site-packages/robot/libraries/OperatingSystem.py

*** Test Cases ***
TC1
    Append To Environment Variable    path    C:${/}Users${/}ashisy${/}.cache${/}selenium
    Log Environment Variables
    Create Dictionary    path=${EXECDIR}${/}downloads
    Directory Should Exist    path=${EXECDIR}${/}downloads

TC3
    Log    ${TEMPDIR}
    @{files}    List Directories In Directory    path=${TEMPDIR}    pattern=*
    Log    ${files}