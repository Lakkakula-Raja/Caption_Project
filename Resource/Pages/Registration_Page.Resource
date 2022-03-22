*** Settings ***
Documentation       this file handles all operations in login page
Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${GENDER}       id=id_gender1
${FNAMEID}    id=customer_firstname
${LNAMEID}    id=customer_lastname
${PASSID}     id=passwd
${CHECK1ID}       id=uniform-newsletter
${CHECK2ID}       id=uniform-optin
${DDID}       id=days
${MMID}       id=months
${YYYYID}     id=years
${ADD1ID}     id=address1
${ADD2ID}     id=address2
${COMPANYID}      id=company
${CITYID}     id=city
${STATEID}    id=id_state
${CODEID}     id=postcode
${PHONEID}    id=phone
${MOBILEID}   id=phone_mobile
${OTHERID}    id=other
${SUBMITID}   id=submitAccount

*** Keywords ***
Reg Gender
    Click Element    ${GENDER}
Reg Fname
    [Arguments]     ${fname}
    Input Text    ${FNAMEID}    ${fname}
Reg Lname
    [Arguments]     ${lname}
    Input Text    ${LNAMEID}    ${lname}
Reg Pass
    [Arguments]     ${pass}
    Input Text    ${PASSID}    ${pass}
Reg DOB
    [Arguments]     ${day}      ${month}        ${year}
    Select From List By Value    ${DDID}        ${day}
    Select From List By Value    ${MMID}      ${month}
    Select From List By Value    ${YYYYID}       ${year}
Reg CheckBox
    Click Element    ${CHECK1ID}
    Click Element    ${CHECK2ID}
Reg Address1
    [Arguments]     ${add1}
    Input Text    ${ADD1ID}    ${add1}
Reg Address2
    [Arguments]     ${add2}
    Input Text    ${ADD2ID}    ${add2}
Reg Comp
    [Arguments]     ${comp}
    Input Text    ${COMPANYID}    ${comp}
Reg City
    [Arguments]     ${city}
    Input Text    ${CITYID}    ${city}
Reg State
    [Arguments]     ${state}
    Select From List By Value    ${STATEID}        ${state}
Reg Code
    [Arguments]     ${code}
    Input Text    ${CODEID}    ${code}
Reg Phone
    [Arguments]     ${phone}
    Input Text    ${PHONEID}    ${phone}
Reg Mobile
    [Arguments]     ${mobile}
    Input Text    ${MOBILEID}    ${mobile}
Reg Other
    [Arguments]     ${other}
    Input Text    ${OTHERID}    ${other}
Reg Submit
    Click Element    ${SUBMITID}
