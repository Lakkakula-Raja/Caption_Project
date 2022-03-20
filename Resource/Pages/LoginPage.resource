*** Settings ***
Documentation       this file handles all operations in login page
Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATER}     id=txtUsername
${USERPASS_LOCATER}     id=txtPassword
${LOGINBUTTON}      id=btnLogin
${SPANMESSAGE}  xpath=//span[@id="spanMessage"]
*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATER}    ${username}

Enter Password
    [Arguments]     ${userpass}
    Input Text    ${USERPASS_LOCATER}    ${userpass}

Click On Login
    Click Button    ${LOGINBUTTON}

Error Login
    [Arguments]     ${IVC}
    Element Text Should Be    ${SPANMESSAGE}    ${IVC}