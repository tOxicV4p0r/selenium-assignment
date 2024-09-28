*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for page
    Wait Until Element Is Visible    ${payment_success_locator.title}

Get status message
    Wait Until Element Is Visible    ${payment_success_locator.title}
    ${txt_result}    Get Text    ${payment_success_locator.title}
    RETURN    ${txt_result}

Get order description
    Wait Until Element Is Visible    ${payment_success_locator.txt_desc}
    ${txt_result}    Get Text    ${payment_success_locator.txt_desc}
    RETURN    ${txt_result}

Click continue shopping button
    Wait Until Element Is Visible    ${payment_success_locator.btn_continue_shopping}
    Click Element    ${payment_success_locator.btn_continue_shopping}
    Wait Until Element Is Not Visible    ${payment_success_locator.btn_continue_shopping}