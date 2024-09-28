*** Settings ***
Resource    ../import.robot

*** Keywords ***
Login with username and password
    [Arguments]    ${username}    ${password}
    home_page.Goto page
    home_page.Wait for page
    common.Click account
    login_page.Wait for page
    login_page.Fill username    ${username}
    login_page.Fill password    ${password}
    login_page.Click login
    # common.Page should display modal popup
    # common.Click OK on modal confirmation