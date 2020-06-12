*** Settings ***
Library               RequestsLibrary

*** Variables ***
${Base_URL}     http://localhost:5000
${MyText}       hello from express

*** Keywords ***
GET BOOTCAMPS
    Create session      GETBOOTCAMPS      ${Base_URL}
    ${resp}=    Get Request     GETBOOTCAMPS    /
    Should Contain      ${resp.text}    ${MyText}     
    Should Be Equal     ${200}      ${resp.status_code}   

*** Test Cases ***
TC_Get_all_bootcamps
    GET BOOTCAMPS