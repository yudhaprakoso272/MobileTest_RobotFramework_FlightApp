*** Settings ***

Documentation    Search Page Keywords Related
Library    AppiumLibrary
# Resource    ../base.robot

*** Keywords ***

Click Search Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Verify Search Screen
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/enterFlight"]

Input Data For Search
    [Arguments]    ${searchData}
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    text=${searchData}

Click Search Button on Search Page
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

Verify Search Data
    Wait Until Page Contains    text=Please enter valid Flight Number
