*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open Website
    SeleniumLibrary.Open Browser    url=${url}    browser=${browser}

Clear all browser instance
    SeleniumLibrary.Close All Browsers

Goto homepage
    SeleniumLibrary.Go To    url=${url}

Goto home by clicking title icon
    Wait Until Element Is Visible    ${header_bar_locator.icon_title}
    Click Element    ${header_bar_locator.icon_title}

Click shopping cart
    Wait Until Element Is Visible    ${header_bar_locator.icon_shopping_cart}
    Click Element    ${header_bar_locator.icon_shopping_cart}

Click account
    Wait Until Element Is Visible    ${header_bar_locator.icon_user}
    Click Element    ${header_bar_locator.icon_user}

Page should display modal popup
    Wait Until Element Is Visible    ${ant_modal_locator.modal_container}

Get modal message
    Wait Until Element Is Visible    ${ant_modal_locator.modal_content}
    ${txt_result}     Get Text    ${ant_modal_locator.modal_content}
    RETURN    ${txt_result}

Click OK button on modal confirmation
    Wait Until Element Is Visible    ${ant_modal_locator.modal_btn_confirm}
    Click Element    ${ant_modal_locator.modal_btn_confirm}
    Wait Until Element Is Not Visible    ${ant_modal_locator.modal_btn_confirm}