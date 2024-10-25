*** Settings ***
Documentation    Common function for the entire app
Resource    resources/utils.robot

*** Variables ***
${USERNAME}     //*[@content-desc='test-Username']
${PASSWORD}     //*[@content-desc='test-Password']
${LOGIN_BUTTON}     //*[@content-desc='test-LOGIN']
${HOME_PAGE}    //*[@text='PRODUCTS']

*** Keywords ***
Login with the credentials
    [Documentation]     Function the login with the user and password
    Input Text      ${USERNAME}     standard_user
    Input Password    ${PASSWORD}   secret_sauce
    Click Element   ${LOGIN_BUTTON}

Vaidate the login was successful
    [Documentation]    Validate the login was successful
    Wait Until Element Is Visible   ${HOME_PAGE}
