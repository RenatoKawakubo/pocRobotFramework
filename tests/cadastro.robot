Documentation   Automação destinado a criação de cadastro de usuário.

*** Settings ***
Resource        ../resources/kwsBase.robot

*** Test Case ***
Tela de Cadastro
    Dado que esteja na tela de cadatro
    Quando realizar o preenchimento dos campos      David   Silveira     506, Boa Viagem Avenue     Salvador    99999   Georgia     11999999999
    Então o cadastro será realizaddo                Home
                          

Login no Sistema
    Dado que esteja na tela de autenticação
    Quando realizar a autenticação   rkawakubo@gmail.com        123456    
    Então usuário será direcionado para tela MY ACCOUNT