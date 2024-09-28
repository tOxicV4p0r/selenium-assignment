*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for page
    SeleniumLibrary.Wait Until Element Is Visible    ${product_detail_locator.detail_container}

Click add to cart
    SeleniumLibrary.Wait Until Element Is Visible    ${product_detail_locator.btn_add_to_cart}
    SeleniumLibrary.Click Element    ${product_detail_locator.btn_add_to_cart}

Click increase item
    SeleniumLibrary.Wait Until Element Is Visible    ${product_detail_locator.btn_increase}
    SeleniumLibrary.Click Element    ${product_detail_locator.btn_increase}

Click decrease item
    SeleniumLibrary.Wait Until Element Is Visible    ${product_detail_locator.btn_decrease}
    SeleniumLibrary.Click Element    ${product_detail_locator.btn_decrease}

Get amount
    SeleniumLibrary.Wait Until Element Is Visible    ${product_detail_locator.input_amount}
    ${value}    SeleniumLibrary.Get Element Attribute    ${product_detail_locator.input_amount}    value
    RETURN    ${value}
