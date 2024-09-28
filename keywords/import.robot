*** Settings ***
Library    SeleniumLibrary

Variables    ../resources/setting/default.yaml
Variables    ../resources/setting/${env}/setting.yaml
Variables    ../resources/testdata/testdata.yaml

Resource    ./common.robot

Resource    ./pages/account_page.robot
Resource    ./pages/delivery_info_page.robot
Resource    ./pages/home_page.robot
Resource    ./pages/login_page.robot
Resource    ./pages/payment_credit_page.robot
Resource    ./pages/payment_select_page.robot
Resource    ./pages/payment_success_page.robot
Resource    ./pages/product_detail.robot
Resource    ./pages/register_page.robot

Resource    ./locators/account_page_locator.robot
Resource    ./locators/ant_modal_locator.robot
Resource    ./locators/delivery_info_page_locator.robot
Resource    ./locators/header_bar_locator.robot
Resource    ./locators/home_page_locator.robot
Resource    ./locators/login_page_locator.robot
Resource    ./locators/payment_credit_page_locator.robot
Resource    ./locators/payment_select_page_locator.robot
Resource    ./locators/payment_success_page_locator.robot
Resource    ./locators/product_detail_locator.robot
Resource    ./locators/register_page_locator.robot

Resource    ./features/account_page_feature.robot
Resource    ./features/common_feature.robot
Resource    ./features/delivery_info_page_feature.robot
Resource    ./features/header_bar_feature.robot
Resource    ./features/home_page_feature.robot
Resource    ./features/login_page_feature.robot
Resource    ./features/payment_credit_page_feature.robot
Resource    ./features/payment_success_page_feature.robot
Resource    ./features/product_detail_page_feature.robot
Resource    ./features/register_page_feature.robot