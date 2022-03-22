*** Settings ***
Documentation       this file handles all operations in login page
Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${SIGIN_LOCATER}     partial link=Sign in
${MAIL_LOCATOR}     id=email
${EMAIL_LOCATOR}        id=email_create
${USERPASS_LOCATER}     id=passwd
${LOGINBUTTON}      id=SubmitLogin
${SUBMIT_CREATE}    id=SubmitCreate

*** Keywords ***
Click Sigin
    Click Element    ${SIGIN_LOCATER}
Email Create
    [Arguments]     ${mail}
    Input Text    ${EMAIL_LOCATOR}    ${mail}
Crate Login
    [Arguments]
    Click Element    ${SUBMIT_CREATE}
Enter Mail
    [Arguments]      ${username}
    Input Text    ${MAIL_LOCATOR}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Password    ${USERPASS_LOCATER}    ${password}

Click On Login
    Click Button    ${LOGINBUTTON}


