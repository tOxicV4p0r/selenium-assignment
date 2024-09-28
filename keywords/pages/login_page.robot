*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for page
    Wait Until Element Is Visible    ${login_locator.input_username}

Fill username
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${login_locator.input_username}
    Input Text    ${login_locator.input_username}    ${text}

Fill password
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${login_locator.input_password}
    Input Text    ${login_locator.input_password}    ${text}

Click login
    Wait Until Element Is Visible    ${login_locator.btn_login}
    Click Element    ${login_locator.btn_login}

Click signup
    Wait Until Element Is Visible    ${login_locator.btn_signup}
    Click Element    ${login_locator.btn_signup}
