Documentation        Cenário destinado a validação dos produtos, valores, quantidades e pagamento.

*** Settings ***
Resource        ../resources/kwsBase.robot


*** Test Case ***
Valor Produto       
    autenticação    rkawakubo@gmail.com        123456 
    E esteja na tela principal    
    Quando adicionar o produto na cesta
    #Então os valores serão contabilizados       
       
