*** Variables ***
${account_locator.title}    css:label[title='First name']
${account_locator.btn_logout}    xpath=//button[text()='Logout']
${account_locator.tab_nav_list}     css:div.ant-tabs-nav-list
${account_locator.tab_btn}    xpath=//div[contains(@class, 'ant-tabs-tab-btn') and text()='{{text}}']
${account_locator.table_container}    css:div.ant-table-container
${account_locator.table_rows}    xpath=//tr[contains(@class, 'ant-table-row')]
${account_locator.table_rows_first_col}    [{{index}}]/td[1]