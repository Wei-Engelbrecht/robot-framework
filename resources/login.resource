*** Settings ***
Library    ../libraries/auth_lib.py

*** Keywords ***
User Logs In
    [Arguments]    ${user}    ${pass}    ${expected_status}
    # Call Python library function to perform API login
    ${status}=    Login Via Api    ${user}    ${pass}
    # Assert that actual status matches expected status
    Should Be Equal    ${status}    ${expected_status}
