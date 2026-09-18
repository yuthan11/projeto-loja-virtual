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


   // ==========================================
   // LAÇO PRINCIPAL DO SISTEMA
   // ==========================================
   enquanto (opcao_menu_principal != 0) {
     limpa()
     escreva("== BEM-VINDO À NOSSA LOJA VIRTUAL ==\n")
     escreva("-----------------------------------------------------\n")
     escreva("MENU PRINCIPAL\n\n")
     
     escreva("1. Ver Produtos e Adicionar ao Carrinho (CREATE)\n")
     escreva("2. Ver Meus Itens no Carrinho (READ)\n")
     escreva("3. Alterar Quantidade no Carrinho (UPDATE)\n")
     escreva("4. Remover Item do Carrinho (DELETE)\n")
     escreva("0. Finalizar Compra e Ir ao Pagamento\n\n")
     escreva("Escolha uma opção: ")
     leia(opcao_menu_principal)


     escolha (opcao_menu_principal) {


       // ====================================================
       // C - CREATE (Adicionar Itens ao Carrinho)
       // ====================================================
       caso 1:
         limpa()
         escreva("--- CATÁLOGO DE PRODUTOS ---\n\n")
         escreva("1. Camisa Esportiva (Estoque: ", estoque_prod1, ") - R$ ", preco_prod1, "\n")
         escreva("2. Boné Casual (Estoque: ", estoque_prod2, ") - R$ ", preco_prod2, "\n")
         escreva("3. Tênis de Corrida (Estoque: ", estoque_prod3, ") - R$ ", preco_prod3, "\n\n")
         escreva("Escolha o produto que deseja adicionar: ")
         leia(opcao_crud)
         escreva("Digite a quantidade desejada: ")
         leia(quantidade_temp)


         se (opcao_crud == 1) {
           se (quantidade_temp > 0 e quantidade_temp <= estoque_prod1) {
             qtd_carrinho_prod1 = qtd_carrinho_prod1 + quantidade_temp
             estoque_prod1 = estoque_prod1 - quantidade_temp
             escreva("\nItem adicionado ao carrinho com sucesso!\n")
           } senao {
             escreva("\nQuantidade inválida ou estoque insuficiente!\n")
           }
         } senao se (opcao_crud == 2) {
           se (quantidade_temp > 0 e quantidade_temp <= estoque_prod2) {
             qtd_carrinho_prod2 = qtd_carrinho_prod2 + quantidade_temp
             estoque_prod2 = estoque_prod2 - quantidade_temp
             escreva("\nItem adicionado ao carrinho com sucesso!\n")
           } senao {
             escreva("\nQuantidade inválida ou estoque insuficiente!\n")
           }








         } senao se (opcao_crud == 3) {
           se (quantidade_temp > 0 e quantidade_temp <= estoque_prod3) {
             qtd_carrinho_prod3 = qtd_carrinho_prod3 + quantidade_temp
             estoque_prod3 = estoque_prod3 - quantidade_temp
             escreva("\nItem adicionado ao carrinho com sucesso!\n")
           } senao {
             escreva("\nQuantidade inválida ou estoque insuficiente!\n")
