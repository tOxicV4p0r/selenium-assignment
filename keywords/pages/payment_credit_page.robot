*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for page
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_credit_card_locator.title}

Fill credit card number
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_credit_card_locator.input_card_number}
    SeleniumLibrary.Input Text    ${payment_credit_card_locator.input_card_number}    ${text}
    
Fill expiration date
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_credit_card_locator.input_exp_date}
    SeleniumLibrary.Input Text    ${payment_credit_card_locator.input_exp_date}    ${text}

Fill cvv code
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_credit_card_locator.input_cvv}
    SeleniumLibrary.Input Text    ${payment_credit_card_locator.input_cvv}    ${text}

Fill card owner
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_credit_card_locator.input_card_owner}
    SeleniumLibrary.Input Text    ${payment_credit_card_locator.input_card_owner}    ${text}

Click comfirm payment button
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_credit_card_locator.btn_confirm}
    SeleniumLibrary.Click Element    ${payment_credit_card_locator.btn_confirm}

    