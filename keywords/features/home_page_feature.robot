*** Settings ***
Resource    ../import.robot

*** Keywords ***
Search product with keyword
    [Arguments]    ${keyword}
    home_page.Wait for page
    home_page.Fill search    ${keyword}
    home_page.Click search

Select item by index
    [Arguments]    ${index}
    home_page.Click item by index    ${index}
    product_detail.Wait for page