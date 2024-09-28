*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for page
    Wait Until Element Is Visible    ${delivery_info_locator.title}
Fill name
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${delivery_info_locator.input_name}
    Input Text    ${delivery_info_locator.input_name}    ${text}

Fill surename
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${delivery_info_locator.input_surename}
    Input Text    ${delivery_info_locator.input_surename}    ${text}

Fill shipping address
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${delivery_info_locator.input_shipping_address}
    Input Text    ${delivery_info_locator.input_shipping_address}    ${text}

Fill phone number
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${delivery_info_locator.input_phone_number}
    Input Text    ${delivery_info_locator.input_phone_number}    ${text}

Fill email
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${delivery_info_locator.input_email}
    Input Text    ${delivery_info_locator.input_email}    ${text}

Click payment button
    Wait Until Element Is Visible    ${delivery_info_locator.btn_payment}
    Click Element    ${delivery_info_locator.btn_payment}