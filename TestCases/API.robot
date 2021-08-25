*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary


*** Variables ***
${Browser}  Chrome
${URL}    https://jsonplaceholder.typicode.com/users


*** Test Cases ***
TC001
    [Tags]    TC001
    create session  test_session    ${URL}
    ${response}=    get on session     test_session  url=${URL}?id=2
    log to console    ${response.text}