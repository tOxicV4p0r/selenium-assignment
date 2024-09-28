*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for page
    Wait Until Element Is Visible    ${product_detail_locator.detail_container}

Click add to cart
    Wait Until Element Is Visible    ${product_detail_locator.btn_add_to_cart}
    Click Element    ${product_detail_locator.btn_add_to_cart}

Click increase item
    Wait Until Element Is Visible    ${product_detail_locator.btn_increase}
    Click Element    ${product_detail_locator.btn_increase}

Click decrease item
    Wait Until Element Is Visible    ${product_detail_locator.btn_decrease}
    Click Element    ${product_detail_locator.btn_decrease}

Get amount
    Wait Until Element Is Visible    ${product_detail_locator.input_amount}
    ${value}    Get Element Attribute    ${product_detail_locator.input_amount}    value
    RETURN    ${value}
