*** Settings ***
Resource    ../../resources/imports.robot

*** Keywords ***
pre request by id '${id}'
    [Documentation]     Set ID for the request
    set test variable   ${id}   /${id}

call api get Bootcamps has content-type
    [Documentation]     Get data by ID
    #connect to devcamper DB
    Create Session  getBootcamps  ${api_host}${devcamper_controller.devcamper_url}${id}
    ${headers}=  Create Dictionary   Content-Type=application/json
    ${response}=    Get Request    getBootcamps    ${EMPTY}    headers=${headers}
    ${resp_json}=     to json     ${response.text}
    set test variable    ${json_response}   ${resp_json}
    set test variable    ${response}    ${response}

    #Disconnect devcampter DB






