*** Settings ***

Library    AppiumLibrary
Resource    ../PageObjects/HomePage/homePage.robot
Resource    ../PageObjects/LoginPage/loginPage.robot
Resource    ../PageObjects/BookPage/bookPage.robot
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

User should be able to Book Flight
    Click Book Button
    Verify Book Screen
    Choose From City    FromCity=Toronto
    Click To City    ToCity=Ottawa
    Click Class    Class=First
    Click Start Date    StartDate=12 August 2019
    Click End Date    EndDate=18 August 2019
    Choose Flight Option
    Choose Day Option
    Click Book Button on Book Screen
    Verify Price Booking
    Choose Option Start or Return    OptionNumber=1
    Click Confirm Button
    Verify Your Booking
    