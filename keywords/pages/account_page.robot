*** Settings ***
Resource    ../import.robot
Library    Collections
Library    String

*** Keywords ***
Goto page
    Go To    url=${url}/${account_path}

Wait for page
    Wait Until Element Is Visible    ${account_locator.title}

Click logout
    Wait Until Element Is Visible    ${account_locator.btn_logout}
    Click Element    ${account_locator.btn_logout}

Find tab and click by text
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${account_locator.tab_nav_list}
    ${tab_name}    String.Replace String    ${account_locator.tab_btn}    {{text}}    ${text}
    Click Element    ${tab_name}

Get list of order id
    Wait Until Element Is Visible    ${account_locator.table_container}
    ${element_count}    Get Element Count    ${account_locator.table_rows}
    @{id_list}    Create List
    FOR     ${index}    IN RANGE    ${element_count}
        ${txt_index}    Convert To String    ${index+1}
        ${row_index}    String.Replace String    ${account_locator.table_rows_first_col}    {{index}}    ${txt_index}
        ${text_id}    Get Text    ${account_locator.table_rows}${row_index}
        Collections.Append To List    ${id_list}    ${text_id}
    END

    RETURN    @{id_list}
