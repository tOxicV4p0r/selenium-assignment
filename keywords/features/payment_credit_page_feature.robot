*** Settings ***
Resource    ../import.robot

*** Keywords ***
Fill the credit card with data
    [Arguments]    ${card_number}    ${exp_date}    ${cvv}    ${owner}
    # payment_credit_page.Wait for page
    payment_credit_page.Fill credit card number    ${card_number}
    payment_credit_page.Fill expiration date    ${exp_date}
    payment_credit_page.Fill cvv code    ${cvv}
    payment_credit_page.Fill card owner    ${owner}

Should display successful message
    common.Page should display modal popup
    ${message}    common.Get modal message
    RETURN    ${message}
    