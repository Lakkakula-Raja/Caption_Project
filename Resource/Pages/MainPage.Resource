*** Settings ***
Documentation       this file handles all operations in login page
Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${MYINFO_LOCATER}     id=menu_pim_viewMyDetails

*** Keywords ***
Click On MyInfo
    Click Element    ${MYINFO_LOCATER}
