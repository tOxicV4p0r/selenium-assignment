*** Variables ***
${payment_select_locator.title}    xpath=//h1[text()='Select Payment Method']
${payment_select_locator.selection}    css:div.payment-selection
${payment_select_locator.rdo_btn}    xpath=//div[contains(@class, 'radio-box')]//span[text()='{{text}}']
${payment_select_locator.btn_next}    xpath=//button/span[text()='Next']