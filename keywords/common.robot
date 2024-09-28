*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open Website
    SeleniumLibrary.Open Browser    url=${url}    browser=${browser}

Clear all browser instance
    SeleniumLibrary.Close All Browsers

Goto homepage
    Clear all pop up
    SeleniumLibrary.Go To    url=${url}

Goto home by clicking title icon on header bar
    SeleniumLibrary.Wait Until Element Is Visible    ${header_bar_locator.icon_title}
    SeleniumLibrary.Click Element    ${header_bar_locator.icon_title}

Click shopping cart icon on header bar
    SeleniumLibrary.Wait Until Element Is Visible    ${header_bar_locator.icon_shopping_cart}
    SeleniumLibrary.Click Element    ${header_bar_locator.icon_shopping_cart}

Click account icon on header bar
    SeleniumLibrary.Wait Until Element Is Visible    ${header_bar_locator.icon_user}
    SeleniumLibrary.Click Element    ${header_bar_locator.icon_user}

Page should display modal popup
    SeleniumLibrary.Wait Until Element Is Visible    ${ant_modal_locator.modal_container}

Get modal message
    SeleniumLibrary.Wait Until Element Is Visible    ${ant_modal_locator.modal_content}
    ${txt_result}     Get Text    ${ant_modal_locator.modal_content}
    RETURN    ${txt_result}

Clear all pop up
    # clear modal
    BuiltIn.Run Keyword And Ignore Error    Click OK button on modal confirmation

Click OK button on modal confirmation
    SeleniumLibrary.Wait Until Element Is Visible    ${ant_modal_locator.modal_btn_confirm}    1s
    SeleniumLibrary.Click Element    ${ant_modal_locator.modal_btn_confirm}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${ant_modal_locator.modal_btn_confirm}    1s