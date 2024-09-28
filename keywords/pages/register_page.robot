*** Settings ***
Resource    ../import.robot

*** Keywords ***
Goto page
    SeleniumLibrary.Go To    url=${url}/${register_path}
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.label_title}

Wait for page
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.label_title}

Fill email address
    [Arguments]    ${username}
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.input_email}
    SeleniumLibrary.Input Text    ${register_locator.input_email}    ${username}

Fill password
    [Arguments]    ${password}
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.input_password}
    SeleniumLibrary.Input Text    ${register_locator.input_password}    ${password}

Fill confirm password
    [Arguments]    ${password}
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.input_confirmpassword}
    SeleniumLibrary.Input Text    ${register_locator.input_confirmpassword}    ${password}

Click signup
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.btn_signup}

    