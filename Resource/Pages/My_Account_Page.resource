*** Settings ***
Documentation       this file handles all operations in My Accounnt page
Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${ADDRESSXPATH}     xpath=//span[text()="My addresses"]
${UPDATEXPATH}      xpath=//span[text()="Update"]
${SAVEXPATH}        xpath=//button[@class="btn btn-default button button-medium"]
${BACKPL}           partial link=Back to your account
${PIXPATH}          xpath=//span[text()="My personal information"]
${OLDPASSID}        id=old_passwd
${NEWPASSID}        id=passwd
${CONPASSID}        id=confirmation

*** Keywords ***
Validation
    Page Should Contain    My account
    Page Should Contain    Order history and details
    Page Should Contain    My credit slips
    Page Should Contain    My addresses
    Page Should Contain    My personal information
    Page Should Contain    My wishlists
My Click Address
    Click Element    ${ADDRESSXPATH}
My Click Update
    Click Element    ${UPDATEXPATH}
My Save
    Click Element    ${SAVEXPATH}
My Back
    Click Element    ${BACKPL}
My Persnal
    Click Element    ${PIXPATH}
My Old Pass
    [Arguments]     ${password}
    Input Text    ${OLDPASSID}    ${password}
My New Pass
    [Arguments]     ${password}
    Input Text    ${NEWPASSID}    ${password}
My Con Pass
    [Arguments]     ${password}
    Input Text    ${CONPASSID}    ${password}
My Conform Submit
    Click Element    ${SAVEXPATH}
My Page Contain
    Page Should Contain     Your personal information has been successfully updated.
