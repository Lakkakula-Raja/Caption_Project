*** Settings ***
Documentation       this file handles browser,resorses to cteate keywords
Library     SeleniumLibrary
#Library    Screenshot
*** Variables ***
${BROWSER}      edge
${URL}      https://opensource-demo.orangehrmlive.com/

*** Keywords ***
launch Browser
    IF  '${BROWSER}'=='edge'
        Set Local Variable    ${driver_name}     msedgedriver.exe
    ELSE IF  '${BROWSER}'== 'ff'
        Set Local Variable    ${driver_name}     geckodriver.exe
    ELSE
        Set Local Variable    ${driver_name}     chromedriver.exe
    END

    Open Browser    browser=${BROWSER}     executable_path=${EXECDIR}${/}driver${/}${driver_name}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=${URL}
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    #Take Screenshot
    Maximize Browser Window