*** Settings ***
Resource    ../import.robot

*** Keywords ***
Goto page
    SeleniumLibrary.Go To    url=${url}
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.icon_user}

Wait for page
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.icon_user}

Click account icon on header bar
    SeleniumLibrary.Wait Until Element Is Visible    ${header_bar_locator.icon_user}
    SeleniumLibrary.Click Element    ${header_bar_locator.icon_user}

Click shopping cart icon on header bar
    SeleniumLibrary.Wait Until Element Is Visible    ${header_bar_locator.icon_shopping_cart}
    SeleniumLibrary.Click Element    ${header_bar_locator.icon_shopping_cart}

Fill search
    [Arguments]    ${txt_search}
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.input_search}
    SeleniumLibrary.Input Text    ${home_locator.input_search}    ${txt_search}

Click search
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.btn_search}
    SeleniumLibrary.Click Element    ${home_locator.btn_search}
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.item_card}    3s

Click item by index
    [Arguments]    ${index}=${0}
    @{elements}=    SeleniumLibrary.Get WebElements    ${home_locator.item_card}
    SeleniumLibrary.Click Element    ${elements}[${index}]

Get the number of products displayed
    ${count}=    SeleniumLibrary.Get Element Count    ${home_locator.item_card}
    RETURN    ${count}