*** Variables ***
${payment_credit_card_locator.title}    xpath=//h1[text()='Payment Details']
${payment_credit_card_locator.input_card_number}    css:input#basic_bin
${payment_credit_card_locator.input_exp_date}    css:input#basic_exp
${payment_credit_card_locator.input_cvv}    css:input#basic_cvc
${payment_credit_card_locator.input_card_owner}    css:input#basic_owner
${payment_credit_card_locator.btn_confirm}    xpath=//button/span[text()='Confirm Payment']