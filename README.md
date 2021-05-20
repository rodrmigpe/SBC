<br>
<p align="center">
  <a href="https://www.uminho.pt" target="_blank"><img src="https://i.imgur.com/FXQo8OL.png" alt="Universidade do Minho"></a>
  <a href="https://www.eng.uminho.pt" target="_blank"><img src="https://i.imgur.com/WABo4st.png" alt="Escola de Engenharia"></a>
  
  <h2 align="center">Projeto Prático SBC - MIEGSI 2020/2021</h2>
  <br>
  
## Índice

- [Introdução](#intro)
- [Tarefa A](#ta)
  - [Parte 1 (BC Manual) - Tarefa A](#ta1)
  - [Parte 2 (BC Automática) - Tarefa A](#ta2)
  - [Pré-requisitos](#pre1)
  - [Getting started (Tarefa A e B)](#getting1)
    - [Variáveis de Ambiente SWIPL](#quick1)
    - [Netbeans Library](#quick2)
   - [Usage](#usage1)
      - [Página Inicial](#quick3)
      - [Pergunta - Ocasiões](#quick4)
      - [Resultado](#quick5)
- [Tarefa B](#tb)
  - [Parte 1 (Transition Stage) - Tarefa B](#tb1)
  - [Parte 2 (Otimização) - Tarefa B](#tb2)
  - [Usage](#usage2)
      - [Página Inicial](#quick6)
      - [Trajetos](#quick7)
      - [Resultado](#quick8)
- [Ferramentas](#built)
- [Licensa](#license)
- [Contactos](#contact)
- [Agradecimentos](#ack)
- [Referências](#refer)

## Introdução <a name = "intro"></a>

No âmbito na unidade curricular de SBC foi no proposto a elaboração de projeto relacionado com o aconselhamento na compra de uma refeição (Parte A) e o aconselhamento do trajeto para a entrega de uma refeição (Parte B).
Todo o desenvolvimento do projeto foi realizado com o auxílio da linguagem Prolog, que é uma linguagem lógica que está centrada num conjunto poderoso de mecanismos básicos tais como: identificação de padrões, estruturas de dados em arvore e backtracking automático. Todas estas características fazem do Prolog uma ferramenta muito útil para estes tipos de projetos centrados em extração de conhecimento automático.

## Tarefa A <a name = "ta"></a>
Na tarefa A, o conhecimento tem que ser adquirido tanto manualmente (Parte 1) como automaticamente (Parte 2). Na parte da extração do conhecimento automático, o SBC tem de ser implementado com regras que devem ser geradas via aquisição automática (Data Mining/ Machine Learning), com o auxílio de ferramentas como o [R](https://www.r-project.org/) ou [Weka](https://www.cs.waikato.ac.nz/ml/weka/) e utilizando a linguagem [Prolog](https://www.swi-prolog.org/).

### Parte 1 (BC Manual) - Tarefa A  <a name = "ta1"></a>
Na primeira parte da tarefa A, foi realizado um sistema baseado em conhecimento (com aquisição de conhecimento manual) para aconselhar um utilizador sobre a escolha e compra de uma refeição. Em aberto, estavam diversos parâmetros que podíamos manipular como os perfis dos clientes, os gostos e as suas necessidades, custos, e entre outros.

### Parte 2 (BC Automática) - Tarefa A <a name = "ta2"></a>
Terminada a parte 1, passou-se para a parte 2 da mesma tarefa com o mesmo objetivo da primeira parte (uma plataforma para aconselhar um utilizador sobre a escolha e compra de uma refeição), mas agora o sistema de conhecimento deve ser adquirido automaticamente com o auxílio de algumas ferramentas de Data Mining/Machine Learning (como o [Weka](https://www.cs.waikato.ac.nz/ml/weka/) ou [R 4.0](https://cran.r-project.org/mirrors.html).

### Pré-requisitos <a name = "pre1"></a>
* [SWI-Prolog 8.2.4](https://www.swi-prolog.org/download/stable)
* [R 4.0](https://cran.r-project.org/mirrors.html)
* [Weka](https://waikato.github.io/weka-wiki/downloading_weka/)
* [NetBeans](https://netbeans.apache.org/download/nb113/nb113.html)
* [VSCode](https://code.visualstudio.com/)

## Getting started (Tarefa A e B) <a name = "getting1"></a>

### Variáveis de Ambiente SWIPL <a name = "quick1"></a>
#### Add SWI-Prolog to the PATH environment variable
![Variaveis_Ambiente](https://github.com/rodrmigpe/SBC/blob/master/GIF_Images/Variaveis_Ambiente.gif)

### Netbeans Library <a name = "quick2"></a>
![NetbeansJPL](https://github.com/rodrmigpe/SBC/blob/master/GIF_Images/NetbeansJPL.gif)

#### Diretoriaas no Consult
```
Nas classes "PaginaInicial", "Pergunta5" e "PerguntaRestricao3" alterar o caminho/diretoria da base de conhecimento
  ```
![Consult](https://github.com/rodrmigpe/SBC/blob/master/GIF_Images/Consult.png)

### Usage  <a name = "usage1"></a>
#### Página Inicial <a name = "quick3"></a>
![PAGINA INICIAL](https://github.com/rodrmigpe/SBC/blob/master/GIF_Images/PAGINA%20INICIAL.PNG)

#### Pergunta - Ocasiões <a name = "quick4"></a>
![PERGUNTA](https://github.com/rodrmigpe/SBC/blob/master/GIF_Images/PERGUNTA.PNG)

#### Resultado <a name = "quick5"></a>
![RESULTADO](https://github.com/rodrmigpe/SBC/blob/master/GIF_Images/RESULTADO.PNG)

## Tarefa B <a name = "tb"></a>
Na tarefa B, o sistema de conhecimento tem que ser resolvido via procura (Parte 1) e no final, otimizar a solução via Otimização, por Hill Climbing (Parte 2). Por outras palavras, temos um estafeta que utiliza uma scooter como meio de transporte que vai entregando encomendas a 1 (objetivo 1) ou a 2 (objetivo 2) clientes. Como output, temos o caminho por este tomado, o lucro gerado e o tempo que este demorou na locomoção.

### Parte 1 (Transition Stage) - Tarefa B <a name = "tb1"></a>
Na primeira parte da tarefa B, foi realizado um sistema baseado em conhecimento direcionado a um estafeta de entrega de refeições de um restaurante, de modo a aconselhar a entrega de refeições para um determinado cliente, mais concretamente, qual o caminho a adotar, o tempo que demora até ao seu destino e qual o lucro associado a essa entrega. Esta primeira parte foi desenvolvida através da linguagem prolog via uma abordagem de Procura (Transição de Estados). Como método de pesquisa, o utilizador pode escolher o depth-first, iterative-deepening e breath-first.

### Parte 2 (Otimização) - Tarefa B <a name = "tb2"></a>
Nesta parte foram desenvolvidas as funcionalidades de optimização usando o método de hillclimbing para o objetivo A (maximizar o lucro), B (minimizar o tempo do percurso) e C (maximizar 0.8*lucro+0.2*(20-tempo)). 
Como método de otimização tinhamos que utilizar o hill-climbing.

### Usage <a name = "usage2"></a>
#### Página Inicial <a name = "quick6"></a>
![PAGINA INICIAL - TAREFA B](https://github.com/rodrmigpe/SBC/blob/master/GIF_Images/PAGINA%20INICIAL%20-%20TAREFA%20B.PNG)

#### Trajetos <a name = "quick7"></a>
![CAMINHOS](https://github.com/rodrmigpe/SBC/blob/master/GIF_Images/CAMINHOS.PNG)

#### Resultado <a name = "quick8"></a>
![RESULTADO . TAREFA B](https://github.com/rodrmigpe/SBC/blob/master/GIF_Images/RESULTADO%20.%20TAREFA%20B.PNG)
  
## Ferramentas <a name = "built"></a>
* [SWI-Prolog](https://www.swi-prolog.org)
* [R](https://www.r-project.org)
* [Java](https://www.java.com/pt-BR/)

## Licensa <a name = "license"></a>

Distributed under the MIT License. See `LICENSE` for more information.

## Contactos <a name = "contact"></a>

* [Guilherme Soares](mailto:ssoares553@gmail.com)
* [Rodrigo Jesus](mailto:rodrmigpe@gmail.com)
* [Tiago Lopes](mailto:tiago18lopess@gmail.com)

## Agradecimentos <a name = "ack"></a>
* Paulo Cortez
* André Pilastri

## Referências <a name = "refer"></a>
* Cortez, P. (2018). Exercícios Resolvidos em Prolog sobre Sistemas Baseados em Conhecimento: Regras de Produção, Extração de Conhecimento, Procura e Otimização. Teaching Report, University of Minho, Guimarães, Portugal.
* Bratko, I. (2012). Programming in Prolog for Artificial intelligence. Pearson Education, 4thedition, Harlow, England.
