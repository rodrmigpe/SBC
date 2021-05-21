:-[search].

:- dynamic (caminho/2).
:- dynamic (tempo/3).
:- dynamic (lucro/3).
:- dynamic (goal/1).

%simple state representation: S, where S is a city
initial([restaurante]). %local inicial

%goal(X):- member(cliente5,X),member(cliente3,X). % destination city.

%caminho (pontoA, pontoB)
caminho(restaurante, cliente1).
caminho(restaurante, cliente4).
caminho(cliente1, cliente2).
caminho(cliente1, cliente5).
caminho(cliente1, cliente4).
caminho(cliente5, cliente3).
caminho(cliente4, cliente2).
caminho(cliente3, cliente4).
caminho(cliente2, cliente3).
caminho(cliente5, cliente2).

%tempo(pontoA, pontoB, temp)
tempo(restaurante, cliente1, 5).
tempo(restaurante, cliente4, 7).
tempo(cliente1, cliente2, 5).
tempo(cliente1, cliente5, 5).
tempo(cliente1, cliente4, 5).
tempo(cliente5, cliente3, 5).
tempo(cliente4, cliente2, 2).
tempo(cliente3, cliente4, 4).
tempo(cliente2, cliente3, 3).
tempo(cliente5, cliente2, 2).

%Lucro(pontoA, pontoB, lucro)
lucro(restaurante, cliente1, 5).
lucro(restaurante, cliente4, 3).
lucro(cliente1,cliente2, 6).
lucro(cliente1, cliente5, 4).
lucro(cliente1, cliente4, 4).
lucro(cliente5, cliente3, 1).
lucro(cliente4, cliente2, 3).
lucro(cliente3, cliente4, 2).
lucro(cliente2, cliente3, 2).
lucro(cliente5, cliente2, 3).

lucro1(restaurante, cliente1, 5).
lucro1(restaurante, cliente2, 6).
lucro1(restaurante, cliente3, 7).
lucro1(restaurante, cliente4, 8).
lucro1(restaurante, cliente5, 9).

% travel(PontoA,PontoB,time):
travel(X,Y,KM):-(tempo(X,Y,KM);tempo(Y,X,KM)). % true if road or symmetrical

% state transition rule s/2: s(PontoA,PontoB)
s(L1,L2):- last(L1,N1),travel(N1,N2,_),append(L1,[N2],L2). % link s(O,D,Dist) with s(O,D)

% evaluation function: (sum of time for all pairs)
eval([_],0).
eval([PontoA,PontoB|R],DS):- 
	travel(PontoA,PontoB,D),
	eval([PontoB|R],DR),
	DS is D+DR.

%lucro(PontoA,PontoB,lucro):
travelLucro(X,Y,EUR):-(lucro(X,Y,EUR);lucro(Y,X,EUR)). % true if lucro or symmetrical

%valor(VS):- lucro1(_,cliente3,V), lucro1(_,cliente1,Y), VS is V + Y.

% execute and show a search method result:
run(Method):- search(Method,Par,S),
			   last(S,LS),
	      write('method:'),write(Method),writepar(Par),nl,
              write('solution:'),write(LS),nl,
	      length(S,N),N1 is N-1,write('solution steps:'),write(N1),nl,
              eval(LS,D),write('tempo:'),D1 is D + 2, write(D1), nl,
			  valor(V),write('lucro:'),write(V), nl. 
% write parameter (if any):
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

% execute 3 example searches:
q1:- run(depthfirst).
q2:- run(iterativedeepening).
q3:- run(breadthfirst).