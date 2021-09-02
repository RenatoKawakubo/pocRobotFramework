Documentation       PKWS destinado ao acesso na pagina.

***Settings ***
Library             SeleniumLibrary
Library             FakerLibrary

Suite Setup         Open Session
Suite Teardown      Close Session


*** Variable ***
${URL}          http://automationpractice.com/index.php
${BROWSER}      Chrome

*** Keywords ***

Open Session
    Open Browser                        ${URL}      ${BROWSER}  
    Title Should Be                     My Store   
    Maximize Browser Window

Close Session
    Close Browser