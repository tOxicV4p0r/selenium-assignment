*** Settings ***
Resource    ../import.robot

*** Keywords ***
Register with data
    [Arguments]    ${username}    ${password}    ${confirmpassword}
    register_page.Fill email address    username=${username}
    register_page.Fill password    password=${password}
    register_page.Fill confirm password    password=${confirmpassword}
    register_page.Click signup

Is register successfully
    ${message}    common_feature.Get message from modal popup
    # Register Failed
    # Register successfully
    IF    '${message}' == 'Register successfully'
        RETURN    ${True}
    END

    RETURN    ${False}