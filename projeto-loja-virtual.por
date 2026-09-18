programa {
 funcao inicio() {
  
   // Variáveis de controle de navegação
   inteiro opcao_menu_principal = -1
   inteiro opcao_crud = -1
   inteiro opcao_pagamento = 0


   // Variável auxiliar para pausar a tela
   cadeia tecla_pausa = ""


   // Preços e Estoques dos Produtos
   real preco_prod1 = 150.0, preco_prod2 = 60.0, preco_prod3 = 250.0
   inteiro estoque_prod1 = 10, estoque_prod2 = 15, estoque_prod3 = 8


   // Variáveis do CARRINHO DE COMPRAS
   inteiro qtd_carrinho_prod1 = 0
   inteiro qtd_carrinho_prod2 = 0
   inteiro qtd_carrinho_prod3 = 0


   // Variáveis auxiliares
   inteiro quantidade_temp = 0
   real valor_total_bruto = 0.0
   real valor_desconto = 0.0
   real valor_final = 0.0


