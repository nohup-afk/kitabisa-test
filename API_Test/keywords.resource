*** Keywords ***
Quick get api response
    [Arguments]    ${args1}    
    create session    url_reqres    ${BASE_URL}    verify=true
    ${headers} =    create dictionary    Content-Type=application/json    
    ${resp} =    Get On Session
    ...    url_reqres
    ...    ${list_user}
    ...    headers=${headers}
    ...    expected_status=anything

    Should Be Equal As Strings    ${resp.status_code}   ${args1}  

Quick get api response list user  
    [Arguments]    ${args1}
    create session    url_reqres    ${BASE_URL}    verify=true
    ${headers} =    create dictionary    Content-Type=application/json    
    ${resp} =    Get On Session
    ...    url_reqres
    ...    ${list_user}
    ...    headers=${headers}
    ...    expected_status=anything
    Should Be Equal As Strings        ${resp.json()['data'][1]}[email]             ${args1}

validate response create user
    [Arguments]    ${args1}
    create session    url_reqres    ${BASE_URL}    verify=true
    ${headers} =    create dictionary    Content-Type=application/json    
    ${resp} =    Post On Session
    ...    url_reqres
    ...    ${users}
    ...    data={"name": "morpheus","job": "leader"}
    ...    headers=${headers}
    ...    expected_status=anything
    Should Be Equal As Strings    ${resp.status_code}   ${args1}  
    Log To Console        ${resp.json()['job']}             
    Log To Console        ${resp.json()['id']}        
