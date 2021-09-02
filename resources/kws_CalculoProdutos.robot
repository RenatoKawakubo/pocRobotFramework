Documentation
***Settings*****
Library    Collections 
Library    BuiltIn
Library     String
*** Variable ***
${ARMAZENAMENTO}

*** Keywords ***

E esteja na tela principal  
    Wait Until Element is Visible       xpath=//body[1]/div[1]/div[2]/div[1]/div[3]/div[1]/ul[1]/li[1]/a[1]/span[1]     5
    Click Element                       xpath=//body[1]/div[1]/div[2]/div[1]/div[3]/div[1]/ul[1]/li[1]/a[1]/span[1]

Quando adicionar o produto na cesta   
    Mouse Up                            xpath=//body/div[@id='page']/div[2]/div[1]/div[2]/div[1]/div[1]/ul[1]/li[1]/div[1]/div[1]/div[1]/a[1]/img[1]
    Wait Until Element Is Visible       xpath=//body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/ul[1]/li[1]/div[1]/div[2]/div[2]/a[2]/span[1]     10
    Click Element                       xpath=//body[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/ul[1]/li[1]/div[1]/div[2]/div[2]/a[2]/span[1]
    #valor do produto
    Wait Until Element Is Visible       id=our_price_display        5
   ${VALORPRODUTOs}      Get Text       id=our_price_display   
   

  ${VALORPRODUTO2} =     Get Substring     ${VALORPRODUTOs}    1
  ${VALORPRODUTO} =     Convert To Number      ${VALORPRODUTO2}
     #btn adição de itens
    Click Element                       xpath=//body/div[@id='page']/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[4]/form[1]/div[1]/div[2]/p[1]/a[2]/span[1]/i[1]
                                        #qtd dos produtos
    ${QTD_PRODUTO}        Get Value      id=quantity_wanted
   
                                           #btn add to cart
    Click Element                      xpath=//span[contains(text(),'Add to cart')]
    log      ${VALORPRODUTO} 
    log     ${QTD_PRODUTO}
    ${result1} =     Evaluate      ${VALORPRODUTO}*${QTD_PRODUTO}
    ${result} =        Convert To Number   ${result1}
    log     ${result}  
    Wait Until Element Is Visible       css=i[class='icon-ok']    5
    
    Wait Until Element Is Visible                   CSS=span[class='ajax_block_products_total']     5
    ${VALORFINALPRODUTOs}      Get Text             CSS=span[class='ajax_block_products_total']  
    ${VALORFINALPRODUTO2} =    Get Substring        ${VALORFINALPRODUTOs}    1
    ${VALORFINALPRODUTO} =     Convert To Number    ${VALORFINALPRODUTO2}
    Should Be Equal As Integers     ${VALORFINALPRODUTO}    ${result}   True
  

 
   

    

 
