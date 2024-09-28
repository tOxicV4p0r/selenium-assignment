*** Settings ***
Resource    ../import.robot

*** Keywords ***
Fill the delivery info with data
    [Arguments]    ${name}=${EMPTY}    ${surname}=${EMPTY}    ${shipping_address}=${EMPTY}    ${phone_number}=${EMPTY}    ${email}=${EMPTY}
    delivery_info_page.Fill name    ${name}
    delivery_info_page.Fill surename    ${surname}
    delivery_info_page.Fill shipping address    ${shipping_address}
    delivery_info_page.Fill phone number    ${phone_number}
    delivery_info_page.Fill email    ${email}