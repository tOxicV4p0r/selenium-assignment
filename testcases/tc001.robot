*** Settings ***
Library    String
Resource    ../keywords/import.robot

Suite Setup    common.Open Website
Suite Teardown    common.Clear all browser instance

*** Test Cases ***
Should go to register page
    login_page_feature.Login with username and password    username=${user.email}    password=${user.password}
    common.Click OK button on modal confirmation
    home_page_feature.Search product with keyword    keyword=${search_keyword}
    # ${item_count}    home_page.Get the number of products displayed
    # Should Be Equal    ${${item_count} > 0}    ${True}
    home_page_feature.Select item by index    index=${0}
    product_detail_page_feature.Add item to cart with amount    amount=${5}
    # Should Be Equal    first    Add product successfully

    common.Click shopping cart
    # delivery_info_page.Wait for page
    # delivery_info_page.Fill name    hanami
    # delivery_info_page.Fill surename    papika
    # delivery_info_page.Fill shipping address    20/321 bkk thailand
    # delivery_info_page.Fill phone number    0891132235
    # delivery_info_page.Fill email    test12345@gmail.com
    delivery_info_page_feature.Fill the delivery info with data    name=${delivery_info.name}    surname=${delivery_info.surename}    shipping_address=${delivery_info.address}    phone_number=${delivery_info.phone}    email=${delivery_info.email}
    delivery_info_page.Click payment
    # payment_select_page.Wait for page
    payment_select_page.Select credit cart
    payment_select_page.Click next
    # payment_credit_page.Wait for page
    # payment_credit_page.Fill credit card number    4111111111111111
    # payment_credit_page.Fill expiration date    10/2025
    # payment_credit_page.Fill cvv code    111
    # payment_credit_page.Fill card owner    boston
    payment_credit_page_feature.Fill the credit card with data    card_number=${credit_card.number}    exp_date=${credit_card.exp}    cvv=${credit_card.cvv}    owner=${credit_card.owner}
    payment_credit_page.Click comfirm payment
    # payment_credit_page.Click OK on modal confirmation
    common.Click OK button on modal confirmation
    # payment_success_page.Wait for page
    # ${txt_status}    payment_success_page.Get status message
    # ${txt_description}    payment_success_page.Get order description
    # Log To Console    ${txt_status}
    # Log To Console    ${txt_description}
    # @{lines}    Split To Lines    ${txt_description}
    # ${order_id}    String.Replace String    ${lines}[0]    ORDER ID:    ${EMPTY}
    # ${order_id}    String.Strip String    ${order_id}
    # Log To Console    ${order_id}
    ${order_id}    payment_success_page_feature.Get order id from order description
    payment_success_page.Click continue shopping
    common.Click account
    # account_page.Wait for page
    # account_page.Find tab and click by text    Preparing
    # # account_page.Find tab and click by text    Pending payment
    account_page_feature.Click tab 'Pending Payment' on 'My Order'
    # @{order_ids}    account_page.Get list of order id
    # Log To Console    ${order_ids} 
    # ${index}    Get Index From List    ${order_ids}    ${order_id}
    # Log To Console    found: ${index}
    ${found}    account_page_feature.Is found the order with order id    ${order_id}
    Should Be Equal    ${found}    ${True}

    Sleep    5s