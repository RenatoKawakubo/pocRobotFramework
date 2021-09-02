Documentation       KWS destinado a cadastramento de usuário no sistema.

** Settings ***
Library             FakerLibrary

*** Keywords ***
Dado que esteja na tela de cadatro
    ${EMAILFAKE}                        FakerLibrary.Email
    Open Session
    Wait Until Element Is Visible       xpath=//a[contains(text(),'Sign in')]           5
    Click Element                       xpath=//a[contains(text(),'Sign in')]
    Wait Until Element Is Visible       //h1[contains(text(),'Authentication')]
    Capture Page Screenshot             Autenticacao.png
    Input Text                          id=email_create                                 ${EMAILFAKE} 
    Capture Page Screenshot             validacaoEmail.png
    Click Element                       xpath=//span[contains(.,'Create an account')]

Quando realizar o preenchimento dos campos 
    [Arguments]                         ${input_firstname}   ${input_lastname}  ${input_address}    ${input_city}   ${input_postcode}   ${input_state}  ${input_mobile}
    Wait Until Element Is Visible       xpath=//h1[contains(text(),'Create an account')]        5
    Click Element                       css=#id_gender1
    Input Text                          css=#customer_firstname                         ${input_firstname}
    Input Text                          css=#customer_lastname                          ${input_lastname}
    Input Text                          id=passwd                                       123456
    Select from list by index           id=days                                         20
    Select from list by index           id=months                                       4
    Select from list by Value           id=years                                        2021  
    Input Text                          xpath=//input[@id='firstname']                  ${input_firstname}
    Input Text                          xpath=//input[@id='lastname']                   ${input_lastname}
    Input Text                          xpath=//input[@id='address1']                   ${input_address}
    Input Text                          xpath=//input[@id='city']                       ${input_city}
    Input Text                          xpath=//input[@id='postcode']                   ${input_postcode}
    Select from list by label           xpath=//*[@id="id_state"]                       ${input_state}
    Input Text                          xpath=//input[@id='phone_mobile']               ${input_mobile}
    Input Text                          xpath=//input[@id='alias']                      automation
    Click Element                       css=button[type=submit][name=submitAccount]
Então o cadastro será realizaddo  
    [Arguments]                         ${input_confirma}
    Element Should Contain              xpath=//*[@id="center_column"]/ul/li/a          ${input_confirma}
    Close Session