*** Settings ***
Documentation       This suite will handle all the test cases related to in valid
...     cradintial text.
Test Setup      launch Browser
Test Teardown       Close Browser
#Library     SeleniumLibrary
Resource    ../Resource/Base/CommonFunctionality.resource
Test Template       TC_IV Template
*** Test Cases ***
TC1     asdfghjkl504@gmail.com      asdfghjkl123        Authentication failed.
TC2     ${EMPTY}      asdfghjkl123        An email address required.
TC3     asdfghjkl504@gmail.com      ${EMPTY}       Password is required.
TC4     asdfghjkl504@gmail.com      asdfghjkl1        Invalid password.
*** Keywords ***
TC_IV Template
    [Arguments]     ${uname}    ${password}     ${error}
    Click Element    partial link=Sign in
    Input Text    id=email    ${uname}
    Input Password    id=passwd    ${password}
    Click Button    id=SubmitLogin
    Page Should Contain    ${error}
    Capture Page Screenshot