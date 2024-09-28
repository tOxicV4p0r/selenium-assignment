*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for page
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.title}
Fill name
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.input_name}
    SeleniumLibrary.Input Text    ${delivery_info_locator.input_name}    ${text}

Fill surename
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.input_surename}
    SeleniumLibrary.Input Text    ${delivery_info_locator.input_surename}    ${text}

Fill shipping address
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.input_shipping_address}
    SeleniumLibrary.Input Text    ${delivery_info_locator.input_shipping_address}    ${text}

Fill phone number
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.input_phone_number}
    SeleniumLibrary.Input Text    ${delivery_info_locator.input_phone_number}    ${text}

Fill email
    [Arguments]    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.input_email}
    SeleniumLibrary.Input Text    ${delivery_info_locator.input_email}    ${text}

Click payment button
    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_info_locator.btn_payment}
    SeleniumLibrary.Click Element    ${delivery_info_locator.btn_payment}