*** Settings ***
Documentation   this program will automate  Your personal information has been successfully updated.
...     and validated
Test Setup      launch Browser
Test Teardown       Close Browser
Test Template     TC Update Template
#Resource    ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/Registration_Page.resource
Resource    ../Resource/Pages/My_Account_Page.resource
Library     DataDriver      file=../test_data/my_data.xlsx      sheet_name=update

*** Test Cases ***
TC UPDATE

*** Keywords ***
TC Update Template
    [Arguments]     ${mail}     ${password}     ${comp}     ${adr2}     ${mobile}       ${other}      ${day}      ${month}    ${year}
    Click Sigin
    Click Sigin
    Enter Mail      ${mail}
    Enter Password      ${password}
    Click On Login
    Validation
    My Click Address
    My Click Update
    Reg Comp        ${comp}
    Reg Address2    ${adr2}
    Reg Mobile      ${mobile}
    Reg Other       ${other}
    My Save
    My Back
    My Persnal
    Reg DOB       ${day}    ${month}    ${year}
    My Old Pass     ${password}
    My New Pass     ${password}
    My Con Pass     ${password}
    My Conform Submit
    My Page Contain
    My Back
    Validation

*** Comments ***
 #    Click Element    partial link=Sign in
 #    Input Text    id=email    ${mail}
 #    Input Password    id=passwd    ${password}
 #    Click Button    id=SubmitLogin
 #    Click Element    xpath=//span[text()="My addresses"]
 #    Click Element    xpath=//span[text()="Update"]
 #    Input Text    id=company    ${comp}
 #    Input Text    id=address2    ${adr2}
 #    Input Text    id=phone_mobile    ${mobile}
 #    Input Text    id=other    ${other}
 #    Click Element    id=submitAddress
 #    Click Element    partial link=Back to your account
 #    Click Element    xpath=//span[text()="My personal information"]
 #    Select From List By Value    id=days        ${day}
 #    Select From List By Value    id=months      ${month}
 #    Select From List By Value    id=years       ${year}
 #    Input Text    id=old_passwd    ${password}
 #    Input Text    id=passwd    ${password}
 #    Input Text    id=confirmation    ${password}
 #    Click Element    name=submitIdentity
 #    Page Should Contain     Your personal information has been successfully updated.
 #    Click Element    partial link=Back to your account
 #    Page Should Contain    My account
 #    Page Should Contain    Order history and details
 #    Page Should Contain    My credit slips
 #    Page Should Contain    My addresses
 #    Page Should Contain    My personal information
 #    Page Should Contain    My wishlists





