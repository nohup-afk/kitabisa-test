*** Settings ***
Library             SeleniumLibrary
Library             FakerLibrary
Resource        keywords.resource

Suite Setup         Initialize test data
Test Teardown       Close Browser


*** Variables ***
${LOGIN URL}    https://accounts.kitabisa.com/register
${BROWSER}      Chrome


*** Test Cases ***
register New User
    [Documentation]    input email and fullname , next page will be CAPTCHA

    As a user open kitabisa website
    Input email and fullname    ${faker_email}    ${faker_name}
    Click daftar

Invalid user email
    As a user open kitabisa website
    Input email and fullname    qweqweqw    ${faker_name}
    User email inline error

Invalid user email and more than 70 char
    As a user open kitabisa website
    Input email and fullname
    ...    qweqweqw
    ...    123qweqweqweqweqwehpsdijkfbk;jbqwpidbaskdjfbqilefgvq;kdjfbs;kweqweqweqwasasddqwasdqwasdqwtsdfghdjfbwe;iubskdfbweilbsdlkfboierhqwoeir
    User email inline error
    Error message max char in fullname

Invalid user email and fullname blank
    As a user open kitabisa website
    Input email and fullname    ${faker_email}    ${faker_name}
    Clear all text field
    Inline erorr blank field



