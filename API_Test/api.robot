*** Settings ***
Documentation       Test Kitabisa api with RF
...                 Retrieve information details of an existing product identified by product ID.


Library             RequestsLibrary
Library             Collections
Library             String
Variables           user_variable.py
Resource            keywords.resource


*** Test Cases ***
Validate response 200 for list users
    Quick get api response    200

Validate if user in list
    Quick get api response list user    lindsay.ferguson@reqres.in

Validate response 200 for Create
    [Documentation]    create user and validate response and    Print value the id and jobs in console
    validate response create user    201
