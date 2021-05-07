:-[base_conhecimento].
:- dynamic caminho/2.
:- dynamic tempo/3.
:- dynamic lucro/3.

%   simple state representation: S, where S is a city
initial(restaurante). % local inicial
goal(client5). % destino

initial(restaurante).
goal(client5). 

%caminho (pontoA, pontoB)
caminho(cliente1, cliente2).
caminho(restaurante, cliente1).
caminho(restaurante, cliente4).
caminho(cliente1, cliente5).
caminho(cliente1, cliente4).
caminho(cliente2, cliente4).
caminho(cliente3, cliente4).
caminho(cliente2, cliente5).
caminho(cliente2, cliente3).
caminho(cliente3, cliente5).

%tempo(pontoA, pontoB, temp)
tempo(cliente1, cliente2, 5).
tempo(restaurante, cliente1, 5).
tempo(restaurante, cliente4, 7).
tempo(cliente1, cliente5, 5).
tempo(cliente1, cliente4, 5).
tempo(cliente2, cliente4, 2).
tempo(cliente3, cliente4, 4).
tempo(cliente2, cliente5, 2).
tempo(cliente2, cliente3, 3).
tempo(cliente3, cliente5, 5).

%Lucro(pontoA, pontoB, lucro)
lucro(cliente1,cliente2, 6).
lucro(restaurante, cliente1, 5).
lucro(restaurante, cliente4, 3).
lucro(cliente1, cliente5, ).
lucro(cliente1, cliente4, ).
lucro(cliente2, cliente4, ).
lucro(cliente3, cliente4, ).
lucro(cliente2, cliente5, ).
lucro(cliente2, cliente3, ).
lucro(cliente3, cliente5, ).

