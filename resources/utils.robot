*** Settings ***
Documentation   Util functions for the entire project
Library  AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/apps/android.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   15.0
${ANDROID_ACTIVITY}     com.swaglabsmobileapp.MainActivity

*** Keywords ***
Open the app
    [Documentation]    Connecting the capabilities with appium
    Open Application  http://127.0.0.1:4723  automationName=${ANDROID_AUTOMATION_NAME}
    ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
    ...  app=${ANDROID_APP}   appActivity=${ANDROID_ACTIVITY}

Mobile Teardown
    [Documentation]    Function to take screnshot and close the driver
    Capture Page Screenshot
    Close Application