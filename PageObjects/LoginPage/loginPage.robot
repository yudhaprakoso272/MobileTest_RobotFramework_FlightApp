*** Settings ***

Documentation    Login Page Keywords Related
Library    AppiumLibrary
Resource    ../base.robot

*** Keywords ***

Verify Login Screen
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView2"]

Input Username
    [Arguments]    ${username}
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=${username}

Input Password
    [Arguments]    ${password}
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=${password}

Click Sign In Button on Login Screen
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Successfully Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

Verify User Failed Login
    Wait Until Page Contains    text=Invalid username/password
