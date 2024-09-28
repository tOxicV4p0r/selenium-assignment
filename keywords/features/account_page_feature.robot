*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click tab 'Pending Payment' on 'My Order'
    account_page.Wait for page
    account_page.Find tab and click by text    Pending payment

Click tab 'Preparing' on 'My Order'
    account_page.Wait for page
    account_page.Find tab and click by text    Preparing

Is found the order with order id
    [Arguments]    ${order_id}
    @{order_ids}    account_page.Get list of order id
    Log To Console    ${order_ids} 
    ${index}    Collections.Get Index From List    ${order_ids}    ${order_id}
    Log To Console    found: ${index}
    IF    ${index} > -1
        RETURN    ${True}
    END

    RETURN    ${False}