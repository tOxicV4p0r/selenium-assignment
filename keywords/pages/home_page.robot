*** Settings ***
Resource    ../import.robot

*** Keywords ***
Goto page
    Go To    url=${url}

Wait for page
    Wait Until Element Is Visible    ${home_locator.icon_user}

Click account
    Wait Until Element Is Visible    ${header_bar_locator.icon_user}
    Click Element    ${header_bar_locator.icon_user}

Click shopping cart
    Wait Until Element Is Visible    ${header_bar_locator.icon_shopping_cart}
    Click Element    ${header_bar_locator.icon_shopping_cart}

Fill search
    [Arguments]    ${txt_search}
    Wait Until Element Is Visible    ${home_locator.input_search}
    Input Text    ${home_locator.input_search}    ${txt_search}

Click search
    Wait Until Element Is Visible    ${home_locator.btn_search}
    Click Element    ${home_locator.btn_search}
    Wait Until Element Is Visible    ${home_locator.item_card}    3s

Click item by index
    [Arguments]    ${index}=${0}
    @{elements}=    Get WebElements    ${home_locator.item_card}
    Click Element    ${elements}[${index}]

Get the number of products displayed
    ${count}=    Get Element Count    ${home_locator.item_card}
    RETURN    ${count}