*** Settings ***
Resource    ../../resources/imports.robot
Library     JSONSchemaLibrary
Library     Collections

*** Keywords ***
HTTP status should be '${expected_code}'
    [Documentation]    Verify response http ststus with expected code
    should be equal as integers    ${response.status_code}    ${expected_code}

Response success should be '${value}'
    Should be equal as strings  ${json_response['success']}     ${value}

Response count value should be '${value}'
    Should be equal as strings  ${json_response['count']}   ${value}