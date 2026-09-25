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
           se 
(quantidade_temp > 0 e quantidade_temp <= estoque_prod2) {
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
           }
         } senao {
           escreva("\nProduto inválido!\n")
         }








         escreva("\nPressione ENTER para voltar ao menu...")
         leia(tecla_pausa)
         pare


       // ====================================================
       // R - READ (Ver Carrinho)
       // ====================================================
       caso 2:
         limpa()
         escreva("--- SEU CARRINHO DE COMPRAS ---\n\n")
         valor_total_bruto = (qtd_carrinho_prod1 * preco_prod1) + (qtd_carrinho_prod2 * preco_prod2) + (qtd_carrinho_prod3 * preco_prod3)






         escreva("1. Camisa Esportiva - Qtd: ", qtd_carrinho_prod1, " - Total: R$ ", (qtd_carrinho_prod1 * preco_prod1), "\n")
         escreva("2. Boné Casual       - Qtd: ", qtd_carrinho_prod2, " - Total: R$ ", (qtd_carrinho_prod2 * preco_prod2), "\n")
         escreva("3. Tênis de Corrida  - Qtd: ", qtd_carrinho_prod3, " - Total: R$ ", (qtd_carrinho_prod3 * preco_prod3), "\n")
         escreva("-----------------------------------------------------\n")
         escreva("VALOR TOTAL PARCIAL: R$ ", valor_total_bruto, "\n\n")








         escreva("Pressione ENTER para voltar ao menu...")
         leia(tecla_pausa)
         pare


       // ====================================================
       // U - UPDATE (Alterar Quantidade)
       // ====================================================
       caso 3:
         limpa()
         escreva("--- ALTERAR QUANTIDADE NO CARRINHO ---\n\n")
         escreva("1. Camisa Esportiva (No Carrinho: ", qtd_carrinho_prod1, ")\n")
         escreva("2. Boné Casual       (No Carrinho: ",
qtd_carrinho_prod2, ")\n")








         escreva("3. Tênis de Corrida  (No Carrinho: ", qtd_carrinho_prod3, ")\n\n")
         escreva("Escolha o item que deseja alterar: ")
         leia(opcao_crud)
         escreva("Digite a NOVA quantidade total desejada no carrinho: ")
         leia(quantidade_temp)


         // Devolve o estoque antigo primeiro para recalcular
         


se (opcao_crud == 1) {
           estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1
           se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod1) {
             qtd_carrinho_prod1 = quantidade_temp
             estoque_prod1 = estoque_prod1 - quantidade_temp
             escreva("\nQuantidade atualizada!\n")
         








  } senao {
             estoque_prod1 = estoque_prod1 - qtd_carrinho_prod1 
// desfaz alteração
             escreva("\nQuantidade indisponível no estoque!\n")
           }
         } senao se (opcao_crud == 2) {
           estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2
           se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod2) {
            








 qtd_carrinho_prod2 = quantidade_temp
             estoque_prod2 = estoque_prod2 - quantidade_temp
             escreva("\nQuantidade atualizada!\n")
           } senao {


             estoque_prod2 = estoque_prod2 - qtd_carrinho_prod2
             escreva("\nQuantidade indisponível no estoque!\n")
           }


         } senao se (opcao_crud == 3) {
           estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3
           se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod3) {
             qtd_carrinho_prod3 = quantidade_temp
             estoque_prod3 = estoque_prod3 - quantidade_temp
             escreva("\nQuantidade atualizada!\n")


           } senao {
             estoque_prod3 = estoque_prod3 - qtd_carrinho_prod3
             escreva("\nQuantidade indisponível no estoque!\n")
           }
         }


         escreva("\nPressione ENTER para voltar ao menu...")
        


 leia(tecla_pausa)
         pare


       // ====================================================
       // D - DELETE (Remover Item do Carrinho)
       // ====================================================
       caso 4:
         limpa()
         escreva("--- REMOVER ITEM DO CARRINHO ---\n\n")
         escreva("1. Remover todas as Camisas\n")




         escreva("2. Remover todos os Bonés\n")
         escreva("3. Remover todos os Tênis\n\n")
         escreva("Escolha qual produto remover completamente: ")
         leia(opcao_crud)


         se (opcao_crud == 1) {


           estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1
           qtd_carrinho_prod1 = 0
           escreva("\nProduto removido do carrinho!\n")
         } senao se (opcao_crud == 2) {
           estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2
           qtd_carrinho_prod2 = 0


           escreva("\nProduto removido do carrinho!\n")
         } senao se (opcao_crud == 3) {
           estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3
           qtd_carrinho_prod3 = 0
           escreva("\nProduto removido do carrinho!\n")
         } senao {
           escreva("\nOpção inválida!\n")
         }


         escreva("\nPressione ENTER para voltar ao menu...")
         leia(tecla_pausa)
         pare


       caso 0:
         // Sai do laço e vai direto para a tela de pagamento abaixo
         pare


       caso contrario:
         escreva("\nOpção Inválida! Tente novamente.\n")
         escreva("Pressione ENTER para continuar...")
         leia(tecla_pausa)
     }
   }


   // ==========================================
   // TELA DE PAGAMENTO
   // ==========================================
   limpa()
   valor_total_bruto = (qtd_carrinho_prod1 * preco_prod1) + (qtd_carrinho_prod2 * preco_prod2) + (qtd_carrinho_prod3 * preco_prod3)


   se (valor_total_bruto == 0) {
     escreva("Você não comprou nenhum produto. Obrigado por visitar nossa loja!\n")




   } senao {
     escreva("=== TELA DE PAGAMENTO ===\n\n")
     escreva("Valor total da compra: R$ ", valor_total_bruto, "\n\n")
     escreva("Formas de pagamento:\n")
     escreva("1. À vista no Pix (10% de Desconto)\n")
     escreva("2. Cartão de Crédito (Valor Integral)\n\n")
     escreva("Escolha a forma de pagamento: ")
     leia(opcao_pagamento)




     se (opcao_pagamento == 1) {
       valor_desconto = valor_total_bruto * 0.10
       valor_final = valor_total_bruto - valor_desconto
       escreva("\nDesconto aplicado: R$ ", valor_desconto, "\n")
     } senao {
       valor_desconto = 0.0
       valor_final = valor_total_bruto
       escreva("\nPagamento no cartão selecionado.\n")
     }


     escreva("\nPressione ENTER para gerar a Nota Fiscal...")
     leia(tecla_pausa)


     // ==========================================
     // NOTA FISCAL DETALHADA
     // ==========================================
     limpa()
     escreva("==================================================\n")
     escreva("           NOTA FISCAL - LOJA VIRTUAL             \n")
     escreva("==================================================\n\n")
     escreva("Itens comprados:\n")


     se (qtd_carrinho_prod1 > 0) {
       escreva("- ", qtd_carrinho_prod1, "x Camisa Esportiva = R$ ", (qtd_carrinho_prod1 * preco_prod1), "\n")
     }
     se (qtd_carrinho_prod2 > 0) {
       escreva("- ", qtd_carrinho_prod2, "x Boné Casual = R$ ", (qtd_carrinho_prod2 * preco_prod2), "\n")
     }
     se (qtd_carrinho_prod3 > 0) {
       escreva("- ", qtd_carrinho_prod3, "x Tênis de Corrida = R$ ", (qtd_carrinho_prod3 * preco_prod3), "\n")
     }


     escreva("--------------------------------------------------\n")
     escreva("Valor Bruto: R$ ", valor_total_bruto, "\n")
     escreva("Desconto:    R$ ", valor_desconto, "\n")
     escreva("VALOR FINAL: R$ ", valor_final, "\n")
     escreva("--------------------------------------------------\n")
     escreva("Obrigado pela preferência e volte sempre!\n")
   }
 }
}

