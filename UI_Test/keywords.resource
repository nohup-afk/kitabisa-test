*** Variables ***   
${time_out}    30
${txt_another_regis}     xpath://h3[text()="Atau lebih cepat"]
${input_email}    xpath://input[@data-testid='register-input-email']
${input_fullname}       xpath://*[@data-testid="register-input-name"] 

${button_daftar}    xpath://button[text()="Daftar"]
${invalid_email_msg}     xpath://*[text()="Hanya diisi dengan nomor ponsel atau email yang valid."]
${err_max_char}    xpath://*[text()="Nama lengkap terlalu panjang (maksimal 70 karakter)."]

${blank_email_msg}     xpath://*[text()="Nomor ponsel atau email tidak boleh kosong."]
${blank_name_msg}    xpath://*[text()="Nama lengkap tidak boleh kosong."]
    
*** Keywords ***
Initialize test data
    ${faker_name}=    FakerLibrary.Name Male
    ${faker_email}=    FakerLibrary.Email
    Set suite variable    ${faker_name}
    Set suite variable    ${faker_email}

As a user open kitabisa website
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window

Input email and fullname
    [Arguments]    ${args1}    ${args2}
    Wait Until Element Is Visible      ${txt_another_regis}      ${time_out}  
    Press Keys     ${input_email}    SPACE
    Click Element    ${input_email} 
    Input Text    ${input_email}     ${args1}
    Press Keys     ${input_fullname}    SPACE
    Click Element   ${input_fullname} 
    Input Text    ${input_fullname}     ${args2}

Click daftar
    Wait Until Element Is Enabled   ${button_daftar}       ${time_out}  
    Click Element    ${button_daftar}  
    Sleep    3

User email inline error
    Wait Until Element Is Visible       ${invalid_email_msg}    ${time_out}  

Error message max char in fullname
    Wait Until Element Is Visible   ${err_max_char}     ${time_out}  

Clear all text field
    Clear Element Text     ${input_email} 
    Press Keys     ${input_email}     SPACE
    Clear Element Text     ${input_fullname} 
    Press Keys     ${input_fullname}     SPACE

Inline erorr blank field
    Wait Until Element Is Visible    ${blank_email_msg}   ${time_out}  
    Wait Until Element Is Visible       ${blank_name_msg}      ${time_out}  