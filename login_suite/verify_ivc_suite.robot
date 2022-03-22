*** Settings ***
Documentation       This suite will handle all the test cases related to in valid
...     cradintial text.
Test Setup      launch Browser
Test Teardown       Close Browser
#Resource    ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource
Test Template       TC_IVC Template

*** Test Cases ***
TC1     asdfghjkl504@gmail.com      asdfghjkl123        Authentication failed.
TC2     ${EMPTY}      asdfghjkl123        An email address required.
TC3     asdfghjkl504@gmail.com      ${EMPTY}       Password is required.


*** Keywords ***
TC_IVC Template
    [Arguments]     ${username}    ${password}     ${error}
    Click Sigin
    Enter Mail      ${username}
    Enter Password      ${password}
    Click On Login
    Page Should Contain    ${error}
    Capture Page Screenshot

*** Comments ***
    [Arguments]     ${uname}    ${password}     ${error}
    Click Element    partial link=Sign in
    Input Text    id=email    ${username}
    Input Password    id=passwd    ${password}
    Click Button    id=SubmitLogin
    Page Should Contain    ${error}
    Capture Page Screenshot