*** Settings ***
Resource    ../import.robot

*** Keywords ***
Get message from modal popup
    common.Page should display modal popup
    ${message}    common.Get modal message
    common.Click OK button on modal confirmation
    RETURN    ${message}