*** Settings ***
Documentation       this program will automate the user to launch brower
Library     SeleniumLibrary
*** Variables ***
${BROWSER}      chrome
${URL}      http://automationpractice.com/index.php

*** Keywords ***
launch Browser
    IF  '${BROWSER}'=='edge'
        Set Local Variable    ${driver_name}     msedgedriver.exe
    ELSE
        Set Local Variable    ${driver_name}     chromedriver.exe
    END

    Open Browser    browser=${BROWSER}     executable_path=${EXECDIR}${/}driver${/}${driver_name}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=${URL}
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Maximize Browser Window