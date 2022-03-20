*** Settings ***
Documentation       This suite will handle all the test cases related to valid
...     cradintial text.
Test Setup      launch Browser
Test Teardown       Close Browser
#Library     SeleniumLibrary
Resource    ../Resource/Base/CommonFunctionality.resource
Test Template       TC_VC Template

*** Test Cases ***
TEST CASE VALIED     asdfghjkl587@gmail.com     asdfghjkl123
TEST CASE VALIED     asdfghjkl569@gmail.com     asdfghjkl123
TEST CASE VALIED     asdfghjkl512@gmail.com     asdfghjkl123
*** Keywords ***
TC_VC Template
    [Arguments]     ${username}     ${password}
    Click Element    partial link=Sign in
    Input Text    id=email    ${username}
    Input Password    id=passwd    ${password}
    Click Button    id=SubmitLogin
    Page Should Contain    My account
    Page Should Contain    Order history and details
    Page Should Contain    My credit slips
    Page Should Contain    My addresses
    Page Should Contain    My personal information
    Page Should Contain    My wishlists
    Capture Page Screenshot
