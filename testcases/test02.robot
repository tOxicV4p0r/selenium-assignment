*** Settings ***
Library    String

*** Test Cases ***
Test show
    ${order_id}    String.Replace String    ORDER ID: 6997    ORDER ID:    ${EMPTY}
    ${order_id}    String.Strip String    ${order_id}