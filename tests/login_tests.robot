*** Settings ***
Resource    ../resources/login.resource
Test Template    User Logs In

*** Test Cases ***                 USER            PASSWORD      EXPECTED_STATUS
Valid Login                        max.muster      Geheim123!    200
Invalid Password                   max.muster      Falsch999     401
Locked User                        locked.user     Geheim123!    403
