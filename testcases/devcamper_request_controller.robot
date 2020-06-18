*** Settings ***
Resource    ../resources/imports.robot
Resource    ../keywords/api/devcamper_request_controller.robot


*** Variables ***
${Base_URL}     http://localhost:5000
${MyText}       hello from express

*** Keywords ***
Able to get all data and return status 200 correctly
    Create Session      GETBOOTCAMPS      ${Base_URL}
    ${resp}=    Get Request     GETBOOTCAMPS    /
    Should Contain      ${resp.text}    ${MyText}  
    Should Be Equal     ${200}      ${resp.status_code}

*** Test Cases ***
TC_001 API can get all data and return success
    [Tags]      regression
    [Documentation]     To verify api can get data from DB correctly
    Given pre request by id ''
    When call api get Bootcamps has content-type
    Then HTTP status should be '200'
    And Response success should be 'True'
    And Response count value should be '4'

TC_002
    Able to get all data and return status 200 correctly