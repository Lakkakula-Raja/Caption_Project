*** Settings ***
Documentation       this file handles all operations in login page
Resource    ../Base/CommonFunctionality.resource
#Test Template
*** Variables ***
${SIGIN_LOCATER}     partial link=Sign in
${MAIL_LOCATOR}     id=email
${USERPASS_LOCATER}     id=passwd
${LOGINBUTTON}      id=SubmitLogin

*** Keywords ***
Click Sigin
    Click Element    ${SIGIN_LOCATER}
Enter Mail
    [Arguments]     ${username}
    Click Element    ${MAIL_LOCATOR}    ${username}
Enter Password
    [Arguments]     ${password}
    Input Password    ${USERPASS_LOCATER}    ${password}
Click On Login
    Click Button    ${LOGINBUTTON}
validation
    Page Should Contain    My account
    Page Should Contain    Order history and details
    Page Should Contain    My credit slips
    Page Should Contain    My addresses
    Page Should Contain    My personal information
    Page Should Contain    My wishlists
    Capture Page Screenshot