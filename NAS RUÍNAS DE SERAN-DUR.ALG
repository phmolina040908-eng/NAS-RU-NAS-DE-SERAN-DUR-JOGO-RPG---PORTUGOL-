Algoritmo "seran-dur"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Kadu
//
// Descrição   : RPG de texto
// Autor(a)    : Pedro Molina
// Data atual  : 19/09/2025

Var
   // Seção de Declarações das variáveis

   raca, classe, energia, xp, inimigos_derrotados, vida_inimigo, dano_inimigo, xp_inimigo, opcao, dano_causado, dano_recebido: inteiro
   enter, inimigo_atual, nome_heroi, nome_raca, nome_classe: caractere

Inicio

mudacor ("amarelo", "frente")
mudacor ("azul", "fundos")
escreval ("=================================")
escreval ("CRÔNICAS DE AURVEDAN (CAPÍTULO 1)")
escreval ("=================================")
escreval ("")
escreval ("---------------------------------")
escreval ("NAS RUÍNAS DE SERAN-DUR")
escreval ("---------------------------------")
escreval ("")
escreval ("Pressione -ENTER- para jogar!")
leia (enter)
limpatela

mudacor ("azul", "frente")
mudacor ("branco", "fundos")
escreval("==================================================================")
escreval("  Em Aurvedan, há eras esquecidas,")
escreval("  quando os Dragões caminhavam entre os mortais,")
escreval("  trazendo tanto sabedoria imortal quanto destruição em chamas.")
escreval("")
escreval("  Eram venerados como senhores do céu e temidos como flagelo da terra.")
escreval("")
escreval("  Os povos ergueram reinos sob sua sombra,")
escreval("  até que uma guerra antiga os lançou ao silêncio das lendas.")
escreval("==================================================================")
escreval("")
escreval("Pressione -ENTER- para continuar...")
leia (enter)
limpatela

escreval("==================================================================")
escreval("  Mas o silêncio começa a se romper.")
escreval("")
escreval("  Nos vales do sul, viajantes falam de rugidos que ecoam pelas serras.")
escreval("")
escreval("  Pastores afirmam ter visto asas vastas cobrindo a lua,")
escreval("  e os sábios murmuram que o fôlego dos dragões pode novamente")
escreval("  se fazer sentir sobre o mundo.")
escreval("==================================================================")
escreval("")
escreval("Pressione -ENTER- para continuar...")
leia(enter)
limpatela

escreval("==================================================================")
escreval("  Para buscar respostas, você parte rumo às ruínas dos Anões de Pouso do Rio Alegre,")
escreval("  um antigo clã que minerava sob as montanhas.")
escreval("  Sua maior obra foi a fortaleza de Seran-dur,")
escreval("  erguida como guardiã dos segredos da terra e bastião contra o fogo dos dragões.")
escreval("")
escreval("  Agora, ela jaz em silêncio, seus portões quebrados,")
escreval("  suas galerias tomadas pela escuridão e pelo eco de passos que não deveriam existir.")
escreval("")
escreval("  O vento frio traz consigo o gosto da cinza e da ferrugem.")
escreval("  Rumores dizem que algo desperto ronda as profundezas da montanha.")
escreval("  E cabe a você descobrir se a lenda dos dragões permanece adormecida...")
escreval("  ou se Aurvedan viverá outra era de fogo.")
escreval("==================================================================")
escreval("")
escreval("Pressione -ENTER- para começar sua aventura...")
leia(enter)
limpatela

mudacor  ("preto", "frente")
mudacor  ("branco", "fundos")
escreval ("Qual seu nome, Herói?!")
escreval ("")
escreva  ("-> ")
leia (nome_heroi)
escreval ("")

energia <- 100
xp <- 0
inimigos_derrotados <- 0

repita
   escreval ("Qual sua classe, Herói?!")
   escreval ("1- Guerreiro (XP + 30 e ENERGIA - 10)")
   escreval ("2- Mago (XP + 20 e ENERGIA - 5)")
   escreval ("3- Ladino (XP + 10 e ENERGIA - 3)")
   escreval ("")
   escreva  ("-> ")
   leia (classe)
   escreval ("--------------------------------------------------")

   se classe = 1 então
      xp <- xp + 30
      energia <- energia - 10
      nome_classe <- "Guerreiro"
   fimse
   se classe = 2 então
      xp <- xp + 20
      energia <- energia - 5
      nome_classe <- "Mago"
   fimse
   se classe = 3 então
      xp <- xp + 10
      energia <- energia - 3
      nome_classe <- "Ladino"
   fimse
até (classe = 1) ou (classe = 2) ou (classe = 3)

repita
   escreval ("Qual sua raça, Herói?!")
   escreval ("1- Humano (XP + 5 e ENERGIA + 2)")
   escreval ("2- Elfo (XP + 10)")
   escreval ("3- Anão (XP + 5 e ENERGIA + 5)")
   escreval ("")
   escreva  ("-> ")
   leia (raca)
   escreval ("--------------------------------------------------")

   se raca = 1 então
      xp <- xp + 5
      energia <- energia + 2
      nome_raca <- "Humano"
   fimse
   se raca = 2 então
      xp <- xp + 10
      nome_raca <- "Elfo"
   fimse
   se raca = 3 então
      xp <- xp + 5
      energia <- energia + 5
      nome_raca <- "Anão"
   fimse
até (raca = 1) ou (raca = 2) ou (raca = 3)
limpatela

mudacor  ("amarelo", "frente")
mudacor  ("preto", "fundos")
escreval ("--------------------------------------------------")
escreval ("Você é um ", nome_classe, " ", nome_raca, ", Herói")
escreval ("--------------------------------------------------")
escreval ("")

escreval ("Pressione -ENTER- para adentrar às ruínas...")
leia (enter)
limpatela

mudacor ("azul", "frente")
escreval("============================================= NAS RUÍNAS DE SERAN-DUR =============================================")
escreval("          <|                                                                  ")
escreval("           A                                                                  ")
escreval("          /.\                                                                 ")
escreval("     <|  [''''                                                                ")
escreval("      A   | #                                                                 ")
escreval("     /.\ [''''                                                                ")
escreval("    ['''' | #  '''''                                                          ")
escreval("     | #  | #  \ .:/                                                          ")
escreval("     | #  | #___| #                                                           ")
escreval("     | '--'     .-'                                                           ")
escreval("   |'-'-'-'-'-#-#-#'                                                          ")
escreval("   |     # ## ######                                                          ")
escreval("    \       .::::'/                                                           ")
escreval("     \      ::::'/                                                            ")
escreval("   :8a|    # # ##                                                             ")
escreval("   ::88a      ###                                                             ")
escreval("  ::::888a  8a ##::.                                                          ")
escreval("  ::::::888a88a[]::::                                                         ")
escreval(" :::::::::SUNDOGa8a::::. ..                                                   ")
escreval(" :::::8::::888:Y8888:::::::::...                                              ")
escreval("::':::88::::888::Y88a______________________________________________________   ")
escreval(":: ::::88a::::88a:Y88a                                  __---__-- __          ")
escreval("' .: ::Y88a:::::8a:Y88a                            __----_-- -------_-__      ")
escreval("  :' ::::8P::::::::::88aa.                   _ _- --  --_ --- __  --- __--    ")
escreval(".::  :::::::::::::::::::Y88as88a...s88aa.                                     ")
escreval("============================================= NAS RUÍNAS DE SERAN-DUR =============================================")

escreval ("")
escreval ("Pressione -ENTER- para investigar as ruínas")
leia (enter)
limpatela

mudacor ("azul", "frente")
mudacor ("branco", "fundos")

inimigo_atual <- "Goblin"
vida_inimigo <- 10
dano_inimigo <- 5
xp_inimigo <- 10
escreval("Um ", inimigo_atual, " surge das sombras, rosnando ferozmente!")
escreval("Pressione -ENTER- para atacar!")
leia(enter)
limpatela

enquanto (vida_inimigo > 0) e (energia > 0) faça
   escreval ("------------------------------------")
   escreval("Inimigo: ", inimigo_atual)
   escreval("Sua energia: ", energia)
   escreval("[1]- Atacar  [2]- Fugir  [3]- Usar poção")
   leia(opcao)
   se opcao = 1 então
      dano_causado <- 5
      dano_recebido <- dano_inimigo
      vida_inimigo <- vida_inimigo - dano_causado
      energia <- energia - dano_recebido
      escreval("Você causou ", dano_causado, " de dano ao ", inimigo_atual)
      escreval("O ", inimigo_atual, " contra-ataca e causa ", dano_recebido, " de dano")
      se vida_inimigo <= 0 então
         escreval("Você derrotou o ", inimigo_atual, "!")
         xp <- xp + xp_inimigo
         inimigos_derrotados <- inimigos_derrotados + 1
      fimse
   senao
      se opcao = 2 então
         energia <- energia - 2
         escreval("Você fugiu! Perdeu 2 de energia")
         vida_inimigo <- 0
      senao
         se opcao = 3 então
            energia <- energia + 50
            escreval("Você usou uma poção e recuperou 50 de energia")
         fimse
      fimse
   fimse
fimenquanto

se xp >= 30 então
   escreval ("")
   escreval("--------------------------------------------------")
   escreval("Enquanto avança pelas ruínas, você encontra uma lâmina fincada em um altar de pedra...")
   escreval("É a lendária espada NAARTHURIEL!")
   escreval("--------------------------------------------------")

   se (nome_raca = "Humano") ou (nome_raca = "Elfo") então
      escreval("")
      escreval("--------------------------------------------------")
      escreval("Sua coragem e linhagem permitem que você empunhe a espada!")
      escreval("O poder de Naarthuriel percorre seu corpo...")
      escreval("")
      escreval(" -> DANO + 10")
      escreval("")
      escreval("--------------------------------------------------")
      escreval("")
      dano_causado <- dano_causado + 10
   senao
      se (nome_raca = "Anão") então
         escreval("")
         escreval("--------------------------------------------------")
         escreval("Você tenta erguer a espada, mas ela é pesada demais para um Anão.")
         escreval("Apesar de sua força, Naarthuriel não o reconhece como portador digno...")
         escreval("--------------------------------------------------")
         escreval("")
      fimse
   fimse
fimse

inimigo_atual <- "Esqueleto"
vida_inimigo <- 20
dano_inimigo <- 10
xp_inimigo <- 20
escreval("")
escreval("Um ", inimigo_atual, " antigo ergue-se entre os escombros!")
escreval("Pressione -ENTER- para enfrentar!")
leia(enter)
limpatela

enquanto (vida_inimigo > 0) e (energia > 0) faça
   escreval ("------------------------------------")
   escreval("Inimigo: ", inimigo_atual)
   escreval("Sua energia: ", energia)
   escreval("[1]- Atacar  [2]- Fugir  [3]- Usar poção")
   leia(opcao)
   se opcao = 1 então
      dano_causado <- 5
      dano_recebido <- dano_inimigo
      vida_inimigo <- vida_inimigo - dano_causado
      energia <- energia - dano_recebido
      escreval("Você causou ", dano_causado, " de dano ao ", inimigo_atual)
      escreval("O ", inimigo_atual, " contra-ataca e causa ", dano_recebido, " de dano")
      se vida_inimigo <= 0 então
         escreval("Você derrotou o ", inimigo_atual, "!")
         xp <- xp + xp_inimigo
         inimigos_derrotados <- inimigos_derrotados + 1
      fimse
   senao
      se opcao = 2 então
         energia <- energia - 2
         escreval("Você fugiu! Perdeu 2 de energia")
         vida_inimigo <- 0
      senao
         se opcao = 3 então
            energia <- energia + 50
            escreval("Você usou uma poção e recuperou 50 de energia")
         fimse
      fimse
   fimse
fimenquanto

se xp >= 50 então
   escreval("")
   escreval("--------------------------------------------------")
   escreval("Enquanto avança pelas ruínas, você tropeça numa haste de metal...")
   escreval("É o épico martelo de BARUK THARBAN-KAL!")
   escreval("--------------------------------------------------")

   se (nome_raca = "Anão") ou (nome_raca = "Humano") então
      escreval("")
      escreval("--------------------------------------------------")
      escreval("Sua coragem e linhagem permitem que você empunhe o martelo!")
      escreval("O poder de Baruk Tharban-Kal escorre entre seus dedos...")
      escreval("--------------------------------------------------")
      escreval("")
      escreval(" -> DANO + 20")
      escreval("")
      dano_causado <- dano_causado + 20
   senao
      se (nome_raca = "Elfo") então
         escreval("")
         escreval("--------------------------------------------------")
         escreval("Você tenta erguer a espada, mas ela é uma arma grosseira demais para um Elfo.")
         escreval("Apesar de seu mérito, Baruk Tharban-Kal não o reconhece como portador digno...")
         escreval("--------------------------------------------------")
         escreval("")
      fimse
   fimse
fimse

inimigo_atual <- "Dragão Ancião"
vida_inimigo <- 50
dano_inimigo <- 30
xp_inimigo <- 50
escreval("")
escreval("Um ", inimigo_atual, " colossal emerge das sombras!")
escreval("Pressione -ENTER- para enfrentar!")
leia(enter)
limpatela

mudacor ("vermelho", "frente")
mudacor ("preto", "fundos")

enquanto (vida_inimigo > 0) e (energia > 0) faça
   escreval ("------------------------------------")
   escreval("Inimigo: ", inimigo_atual)
   escreval("Sua energia: ", energia)
   escreval("[1]- Atacar  [2]- Fugir  [3]- Usar poção")
   leia(opcao)
   se opcao = 1 então
      vida_inimigo <- vida_inimigo - dano_causado
      energia <- energia - dano_inimigo
      escreval("Você causou ", dano_causado, " de dano ao ", inimigo_atual)
      escreval("O ", inimigo_atual, " contra-ataca e causa ", dano_inimigo, " de dano")
      se vida_inimigo <= 0 então
         escreval("Você derrotou o ", inimigo_atual, "!")
         xp <- xp + xp_inimigo
         inimigos_derrotados <- inimigos_derrotados + 1
      fimse
   senao
      se opcao = 2 então
         energia <- energia - 2
         escreval("Você fugiu! Perdeu 2 de energia")
         vida_inimigo <- 0
      senao
         se opcao = 3 então
            energia <- energia + 50
            escreval("Você usou uma poção e recuperou 50 de energia")
         fimse
      fimse
   fimse
fimenquanto

se xp >= 70 então
   escreval("")
   escreval("--------------------------------------------------")
   escreval("Enquanto avança pelas ruínas, você encontra uma coisa brilhante...")
   escreval("É a antiga GEMA DE SANTO CRISTÓVÃO!")
   escreval("--------------------------------------------------")

   se (nome_raca = "Anão") ou (nome_raca = "Elfo") então
      escreval("")
      escreval("--------------------------------------------------")
      escreval("Sua coragem e linhagem permitem que você absorva sua energia!")
      escreval("A magia da Gema de Santo Cristóvão emana de seu corpo...")
      escreval("--------------------------------------------------")
      escreval("")
      escreval(" -> ENERGIA + 50")
      escreval("")
      energia <- energia + 50
   senao
      se (nome_raca = "Humano") então
         escreval("")
         escreval("--------------------------------------------------")
         escreval("Você até tenta absorver sua magia, mas é uma força divina demais...")
         escreval("--------------------------------------------------")
         escreval("")
      fimse
   fimse
fimse

se (energia > 0) então
   escreval("")
   escreval("Parabéns ", nome_heroi, "! Você triunfou em Seran-Dur.")
   escreval("XP acumulado: ", xp)
   escreval("Energia restante: ", energia)
   escreval("Inimigos derrotados: ", inimigos_derrotados)
   escreval("")
   escreval("Pressione -ENTER- para finalizar o primeiro capítulo...")
   leia    (enter)
   limpatela

   escreval("")
   escreval("--------------------------------------------------")
   escreval("Fim da Aventura")
   escreval("--------------------------------------------------")
   escreval("")
senão
   escreval("Maldição para você, " nome_heroi, "! Você foi engolfado pela escuridão de Seran-dur...")
   escreval("XP acumulado: ", xp)
   escreval("Energia restante: ", energia)
   escreval("Inimigos derrotados: ", inimigos_derrotados)
   escreval("")
   escreval("Pressione -ENTER- para finalizar o primeiro capítulo...")
   leia    (enter)
   limpatela

   escreval("")
   escreval("--------------------------------------------------")
   escreval("Fim da Aventura")
   escreval("--------------------------------------------------")
   escreval("")
fimse
FimAlgoritmo
