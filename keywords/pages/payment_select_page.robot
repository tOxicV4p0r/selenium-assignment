*** Settings ***
Resource    ../import.robot
Library    String

*** Keywords ***
Wait for page
    Wait Until Element Is Visible    ${payment_select_locator.title}

Select credit card button
    Wait Until Element Is Visible    ${payment_select_locator.selection} 
    ${payment_type}    String.Replace String    ${payment_select_locator.rdo_btn}    {{text}}    Credit Card
    Click Element    ${payment_type}

Select QR code button
    Wait Until Element Is Visible    ${payment_select_locator.selection} 
    ${payment_type}    String.Replace String    ${payment_select_locator.rdo_btn}    {{text}}    QR Code
    Click Element    ${payment_type}

Click next button
    Wait Until Element Is Visible    ${payment_select_locator.btn_next}
    Click Element    ${payment_select_locator.btn_next}
    Wait Until Element Is Not Visible    ${payment_select_locator.btn_next}