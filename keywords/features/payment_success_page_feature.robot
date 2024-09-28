*** Settings ***
Resource    ../import.robot

*** Keywords ***
Get order id from order description
    ${txt_description}    payment_success_page.Get order description
    # Log To Console    ${txt_status}
    # Log To Console    ${txt_description}
    @{lines}    Split To Lines    ${txt_description}
    ${order_id}    String.Replace String    ${lines}[0]    ORDER ID:    ${EMPTY}
    ${order_id}    String.Strip String    ${order_id}
    # Log To Console    ${order_id}
    RETURN    ${order_id}