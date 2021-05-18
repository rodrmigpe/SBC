:-[search].

:- dynamic (caminho/2).
:- dynamic (tempo/3).
:- dynamic (lucro/3).
:- dynamic (goal/1).

%simple state representation: S, where S is a city
initial(restaurante). %local inicial
goal(cliente5). 

%Definir o goal do Objetivo1 dinamicamente
def_goal(X,Client):- interpret(X,Client), retract(goal(_)), assert(goal(Client)),write(Client).

interpret(1, cliente1).
interpret(2, cliente2).
interpret(3, cliente3).
interpret(4, cliente4).
interpret(5, cliente5).

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
lucro(cliente1, restaurante, 5).
lucro(cliente4, restaurante, 3).
lucro(cliente1, cliente5, 4).
lucro(cliente1, cliente4, 4).
lucro(cliente2, cliente4, 3).
lucro(cliente3, cliente4, 2).
lucro(cliente2, cliente5, 3).
lucro(cliente2, cliente3, 2).
lucro(cliente3, cliente5, 1).

lucro1(restaurante, cliente1, 5).
lucro1(restaurante, cliente2, 6).
lucro1(restaurante, cliente3, 7).
lucro1(restaurante, cliente4, 8).
lucro1(restaurante, cliente5, 9).

% travel(PontoA,PontoB,distance):
travel(X,Y,KM):-(tempo(X,Y,KM);tempo(Y,X,KM)). % true if road or symmetrical

% state transition rule s/2: s(PontoA,PontoB)
s(N1,N2):- travel(N1,N2,_), travelLucro(N1,N2,_). % link s(O,D,Dist) with s(O,D)

% evaluation function: (sum of distances for all pairs)
duracao([_],0).
duracao([PontoA,PontoB|R],DS):- 
	travel(PontoA,PontoB,D),
	duracao([PontoB|R],DR),
	DS is D+DR.

%lucro(PontoA,PontoB,lucro):
travelLucro(X,Y,EUR):-(lucro(X,Y,EUR);lucro(Y,X,EUR)). % true if caminho or symmetrical

%evaluation function: (sum of profit for all pairs)
valor([_],0).
valor(ClienteF,VS):- lucro1(_,ClienteF,V), VS is V.

% execute and show a search method result:
run(Method,S,V,D):- search(Method,Par,S),
	      write('method:'),write(Method),writepar(Par),nl,
              write('solution:'),write(S),nl,
	      length(S,N),N1 is N-1,write('solution steps:'),write(N1),nl,
		  last(S,LS),write('objetivo:'),write(LS),nl,
		  	  duracao(S,D),write('tempo:'),D1 is D + 1, write(D1), nl,
              valor(LS,V),write('lucro:'), write(V), nl.             
% write parameter (if any):
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

% execute 3 example searches:
q1:- run(depthfirst,LS,V,D).
q2:- run(iterativedeepening,LS,V,D).
q3:- run(breadthfirst,LS,V,D).
