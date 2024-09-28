*** Settings ***
Resource    ../import.robot

*** Keywords ***
Logout user
    common.Goto homepage
    common.Click account icon on header bar
    account_page.Click logout
    home_page.Wait for page
    # Get style attribute
    # Should not have style="color: greenyellow;"