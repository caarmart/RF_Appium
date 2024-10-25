*** Settings ***
Documentation    This is a test to display an app in Android/iOS platform
Resource    resources/utils.robot
Resource    resources/app.robot
Test Teardown    Mobile Teardown


*** Test Cases ***
Login into the application
    [Documentation]    Script to check the app was displayed
    Open the app
    Login with the credentials
    Vaidate the login was successful