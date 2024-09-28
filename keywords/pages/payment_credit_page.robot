*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for page
    Wait Until Element Is Visible    ${payment_credit_card_locator.title}

Fill credit card number
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${payment_credit_card_locator.input_card_number}
    Input Text    ${payment_credit_card_locator.input_card_number}    ${text}
    
Fill expiration date
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${payment_credit_card_locator.input_exp_date}
    Input Text    ${payment_credit_card_locator.input_exp_date}    ${text}

Fill cvv code
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${payment_credit_card_locator.input_cvv}
    Input Text    ${payment_credit_card_locator.input_cvv}    ${text}

Fill card owner
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${payment_credit_card_locator.input_card_owner}
    Input Text    ${payment_credit_card_locator.input_card_owner}    ${text}

Click comfirm payment
    Wait Until Element Is Visible    ${payment_credit_card_locator.btn_confirm}
    Click Element    ${payment_credit_card_locator.btn_confirm}

    