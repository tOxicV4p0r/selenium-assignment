*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for page
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_success_locator.title}

Get status message
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_success_locator.title}
    ${txt_result}    SeleniumLibrary.Get Text    ${payment_success_locator.title}
    RETURN    ${txt_result}

Get order description
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_success_locator.txt_desc}
    ${txt_result}    SeleniumLibrary.Get Text    ${payment_success_locator.txt_desc}
    RETURN    ${txt_result}

Click continue shopping button
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_success_locator.btn_continue_shopping}
    SeleniumLibrary.Click Element    ${payment_success_locator.btn_continue_shopping}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${payment_success_locator.btn_continue_shopping}