*** Settings ***

Library    AppiumLibrary
Resource    ../PageObjects/HomePage/homePage.robot
Resource    ../PageObjects/LoginPage/loginPage.robot
Resource    ../PageObjects/SearchPage/searchPage.robot
Resource    ../PageObjects/base.robot

Suite Setup    Run Keywords    
...    Open Flight Application    AND    
...    Verify Home Screen    AND    
...    Click Sign In Button    AND    
...    Verify Login Screen    AND    
...    Input Username    username=support@ngendigital.com    AND    
...    Input Password    password=abc123    AND    
...    Click Sign In Button on Login Screen    AND    
...    Verify User Successfully Login

Suite Teardown    Close Flight Application

*** Test Cases ***

User should be able to Search Book Flight
    Click Search Button
    Verify Search Screen
    Input Data For Search    searchData=CADX2214
    Click Search Button on Search Page
    Verify Search Data
    