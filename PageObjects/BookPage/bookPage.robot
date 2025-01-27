*** Settings ***

Documentation    Search Page Keywords Related
Library    AppiumLibrary
# Resource    ../base.robot

*** Keywords ***

Click Book Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

Verify Book Screen
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView3"]

Click Round Trip Button
    Click Element    locator=//android.support.v7.app.ActionBar.Tab[@content-desc="Round Trip"]

Choose From City
    [Arguments]    ${FromCity}
    Click Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]
    Click Text    text=${FromCity}
    # Wait Until Page Does Not Contain Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]

Click To City
    [Arguments]    ${ToCity}
    Click Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]
    Click Text    text=${ToCity}
    # Wait Until Page Does Not Contain Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]

Click Class
    [Arguments]    ${Class}
    Click Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="First"]
    Click Text    text=${Class}
    # Wait Until Page Does Not Contain Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="First"]

# Click Start Data Choose Year and Mount
#     [Arguments]    ${Year}    ${Mount}
#     Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
#     Wait Until Element Is Visible    locator=//android.widget.LinearLayout[@resource-id="android:id/date_picker_header"]/android.widget.LinearLayout
#     Click Element    locator=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]
#     Click Element    locator=

Click Start Date
    [Arguments]    ${StartDate}
    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
    Wait Until Element Is Visible    locator=//android.widget.LinearLayout[@resource-id="android:id/date_picker_header"]/android.widget.LinearLayout
    Click Element    locator=//android.view.View[@content-desc="${StartDate}"]
    Click Element    locator=//android.widget.Button[@resource-id="android:id/button1"]
    Wait Until Page Does Not Contain Element    locator=//android.widget.LinearLayout[@resource-id="android:id/date_picker_header"]/android.widget.LinearLayout

Click End Date
    [Arguments]    ${EndDate}
    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    Wait Until Element Is Visible    locator=//android.widget.LinearLayout[@resource-id="android:id/date_picker_header"]/android.widget.LinearLayout
    Click Element    locator=//android.view.View[@content-desc="${EndDate}"]
    Click Element    locator=//android.widget.Button[@resource-id="android:id/button1"]
    Wait Until Page Does Not Contain Element    locator=//android.widget.LinearLayout[@resource-id="android:id/date_picker_header"]/android.widget.LinearLayout

Choose Flight Option
    Click Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

Choose Flight And Hotel Option
    Click Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlightHotel"]

Choose Day Option
    Click Element    locator=//android.widget.CheckBox[@resource-id="com.example.myapplication:id/checkBoxDay"]

Click Book Button on Book Screen
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Verify Price Booking
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView6"]

Choose Option Start or Return
    [Arguments]    ${OptionNumber}
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price${OptionNumber}"]

Click Confirm Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

Verify Your Booking
    Wait Until Element Is Visible    locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]