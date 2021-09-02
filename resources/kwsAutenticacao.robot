Documentation       kws destinado a autenticação do usuário no sistema.

*** Settings ***
Test Template       autenticação

***Keywords***
autenticação
    [Arguments]                         ${email}            ${pwd}
    Open Session
    Wait Until Element Is Visible       xpath=//a[contains(text(),'Sign in')]           5
    Click Element                       xpath=//a[contains(text(),'Sign in')]
    Wait Until Element Is Visible       id=email                                        5
    Input Text                          id=email            ${email} 
    Wait Until Element Is Visible       id=passwd           5
    Input Text                          id=passwd           ${pwd}  
    Capture Page Screenshot             telaLogon.png  
    Click Element                       css=#SubmitLogin