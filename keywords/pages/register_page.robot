*** Settings ***
Resource    ../import.robot

*** Keywords ***
Goto page
    Go To    url=${url}/${register_path}

Wait for page
    Wait Until Element Is Visible    ${register_locator.label_title}

Fill email address
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${register_locator.input_email}
    Input Text    ${register_locator.input_email}    ${username}

Fill password
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${register_locator.input_password}
    Input Text    ${register_locator.input_password}    ${password}

Fill confirm password
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${register_locator.input_confirmpassword}
    Input Text    ${register_locator.input_confirmpassword}    ${password}

Click signup
    Wait Until Element Is Visible    ${register_locator.btn_signup}
    
    