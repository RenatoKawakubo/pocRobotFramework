Documentation   Automação destinado a criação de cadastro de usuário.

*** Settings ***
Resource        ../resources/kwsBase.robot

Test Template   Tentativa de Login  

*** Keywords ***
Tentativa de Login
    [Arguments]     ${email}      ${pwd}        ${MESSAGEERROR}
    Dado que esteja na tela de autenticação
    Quando realizar a autenticação              ${email}                 ${pwd}      
    Então sistema irá negar o acesso            ${MESSAGEERROR}         

*** Test Case ***
Login no Sistema email errado   ${EMPTY}                123456          An email address required.
Login no sistema senha errado   rkawakubo@gmail.com     ${EMPTY}        Password is required.

telefone invalido