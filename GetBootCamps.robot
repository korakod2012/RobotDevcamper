*** Settings ***
Library               RequestsLibrary

*** Variables ***
${Base_URL}     http://localhost:5000
${MyText}       hello from express

*** Keywords ***
GET BOOTCAMPS and Check data on body
    Create session      GETBOOTCAMPS      ${Base_URL}
    ${resp}=    Get Request     GETBOOTCAMPS    /
    Should Contain      ${resp.text}    ${MyText}  

Check status return  
    Create session      GETBOOTCAMPS      ${Base_URL}
    ${resp}=    Get Request     GETBOOTCAMPS    /
    Should Be Equal     ${200}      ${resp.status_code}   

*** Test Cases ***
TC_Get_all_bootcamps
    GET BOOTCAMPS and Check data on body
    Check status return