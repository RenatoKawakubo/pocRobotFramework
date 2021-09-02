Documentation       KWS destinado a autenticação de usuário já existente no sistema.

** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Dado que esteja na tela de autenticação
    Open Session
    Wait Until Element Is Visible       xpath=//a[contains(text(),'Sign in')]           5
    Click Element                       xpath=//a[contains(text(),'Sign in')]

Quando realizar a autenticação
    [Arguments]      ${email}           ${pwd}
    Wait Until Element Is Visible       id=email                                        5
    Input Text                          id=email        ${email} 
    Wait Until Element Is Visible       id=passwd       5
    Input Text                          id=passwd       ${pwd}  
    Capture Page Screenshot             telaLogon.png  
    Click Element                       css=#SubmitLogin 

Então usuário será direcionado para tela MY ACCOUNT
    Wait Until Element Is Visible       xpath=//h1[contains(text(),'My account')]       5
    Capture Page Screenshot             confirmacaoMyAccount.png
    Close Session

Então sistema irá negar o acesso  
    [Arguments]     ${MESSAGEERROR}
    Wait Until Element Is Visible       xpath=//li[contains(text(),'${MESSAGEERROR}')]        5
    Capture Page Screenshot             messageError.png
    Close Session


   