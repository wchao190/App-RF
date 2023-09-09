*** Settings ***
Library           MyLibrary
Resource          ./登陆业务.txt

*** Variables ***
${username}       xxx
${pwd}            xxx

*** Test Cases ***
登陆成功
    [Tags]    login
    是否登陆    ${username}    ${pwd}
    [Teardown]    close application
