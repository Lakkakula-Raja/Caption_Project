*** Settings ***
Documentation   this will automate the user to register with a madatory fields
...     and even done the validation
Test Setup      launch Browser
Test Teardown       Close Browser
Test Template     TC Regester Template
#Resource    ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/Registration_Page.Resource
Resource    ../Resource/Pages/My_Account_Page.resource

Library     DataDriver      file=../test_data/my_data.xlsx      sheet_name=regester

*** Test Cases ***
TEST CSAE REGESTER

*** Keywords ***
TC Regester Template
    [Arguments]     ${mail}    ${fname}   ${lname}   ${pass}   ${add1}   ${city}   ${state}   ${code}   ${phnoe}
    Click Sigin
    Email Create    ${mail}
    Crate Login
    Reg Gender
    Reg Fname       ${fname}
    Reg Lname       ${lname}
    Reg Pass        ${pass}
    Reg CheckBox
    Reg Address1    ${add1}
    Reg City        ${city}
    Reg State       ${state}
    Reg Code        ${code}
    Reg Phone       ${phnoe}
    Reg Submit
    Validation



*** Comments ***
 #    Click Element    class=login
 #    Input Text    id=email_create    ${mail}
 #    Click Element    id=SubmitCreate
 #    Click Element    id=id_gender1
 #    Input Text    id=customer_firstname    ${fname}
 #    Input Text    id=customer_lastname    ${lname}
 #    Input Text    id=passwd    ${pass}
 #    Click Element    id=uniform-newsletter
 #    Click Element    id=uniform-optin
 #    Input Text    id=address1    ${add1}
 #    Input Text    id=city    ${city}
 #    Select From List By Value    id=id_state        ${state}
 #    Input Text    id=postcode    ${code}
 #    Input Text    id=phone    ${phnoe}
 #    Click Element    id=submitAccount
 #    Page Should Contain    My account
 #    Page Should Contain    Order history and details
 #    Page Should Contain    My credit slips
 #    Page Should Contain    My addresses
 #    Page Should Contain    My personal information
 #    Page Should Contain    My wishlists

