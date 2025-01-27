*** Settings ***
Documentation            Home Page Keywords Related
Library    AppiumLibrary
Resource    ../base.robot

*** Keywords ***

Verify Home Screen
    Wait Until Element Is Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
