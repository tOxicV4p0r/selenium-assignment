*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for page
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.input_username}

Fill username
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.input_username}
    SeleniumLibrary.Input Text    ${login_locator.input_username}    ${text}

Fill password
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.input_password}
    SeleniumLibrary.Input Text    ${login_locator.input_password}    ${text}

Click login
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.btn_login}
    SeleniumLibrary.Click Element    ${login_locator.btn_login}

Click signup
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.btn_signup}
    SeleniumLibrary.Click Element    ${login_locator.btn_signup}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${login_locator.btn_signup}
