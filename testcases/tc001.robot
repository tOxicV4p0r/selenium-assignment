*** Settings ***
Library    String
Resource    ../keywords/import.robot

Suite Setup    common.Open Website
Suite Teardown    common.Clear all browser instance

*** Test Cases ***
Should buy item with search product successfully
    home_page.Goto page
    common.Click account icon on header bar
    login_page.Click signup
    register_page_feature.Register with data    username=${user.email}    password=${user.password}    confirmpassword=${user.password}
    ${result}    register_page_feature.Is register successfully
    Should Be Equal    ${result}    ${True}    register failed
    header_bar_feature.Logout user
    login_page_feature.Login with username and password    username=${user.email}    password=${user.password}
    ${result}    login_page_feature.Is login successfully
    Should Be Equal    ${result}    ${True}    login failed

    home_page_feature.Search product with keyword    keyword=${search_keyword}
    home_page_feature.Select item by index    index=${0}
    product_detail_page_feature.Add item to cart with amount    amount=${5}

    common.Click shopping cart icon on header bar

    delivery_info_page_feature.Fill the delivery info with data    name=${delivery_info.name}    surname=${delivery_info.surename}    shipping_address=${delivery_info.address}    phone_number=${delivery_info.phone}    email=${delivery_info.email}
    delivery_info_page.Click payment button

    payment_select_page.Select credit card button
    payment_select_page.Click next button

    payment_credit_page_feature.Fill the credit card with data    card_number=${credit_card.number}    exp_date=${credit_card.exp}    cvv=${credit_card.cvv}    owner=${credit_card.owner}
    payment_credit_page.Click comfirm payment button

    common.Click OK button on modal confirmation

    ${order_id}    payment_success_page_feature.Get order id from order description
    payment_success_page.Click continue shopping button
    common.Click account icon on header bar

    account_page_feature.Click tab 'Pending Payment' on 'My Order'

    ${found}    account_page_feature.Is found the order with order id    ${order_id}
    Should Be Equal    ${found}    ${True}

    Sleep    5s