*** Settings ***
Resource    ../import.robot

*** Keywords ***
Add item to cart with amount
    [Arguments]    ${amount}=${1}
    
    ${current_amount}     product_detail.Get amount
    
    WHILE    ${current_amount} != ${amount}
        product_detail.Click increase item
        ${current_amount}     product_detail.Get amount
    END

    product_detail.Click add to cart
    common.Page should display modal popup
    common.Click OK button on modal confirmation