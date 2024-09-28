*** Settings ***
Resource    ../import.robot
Library    String

*** Keywords ***
Wait for page
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_select_locator.title}

Select credit card button
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_select_locator.selection} 
    ${payment_type}    String.Replace String    ${payment_select_locator.rdo_btn}    {{text}}    Credit Card
    SeleniumLibrary.Click Element    ${payment_type}

Select QR code button
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_select_locator.selection} 
    ${payment_type}    String.Replace String    ${payment_select_locator.rdo_btn}    {{text}}    QR Code
    SeleniumLibrary.Click Element    ${payment_type}

Click next button
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_select_locator.btn_next}
    SeleniumLibrary.Click Element    ${payment_select_locator.btn_next}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${payment_select_locator.btn_next}