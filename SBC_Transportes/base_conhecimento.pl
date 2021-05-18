:-[search].

% travel(PontoA,PontoB,distance):
travel(X,Y,KM):-(tempo(X,Y,KM);tempo(Y,X,KM)). % true if road or symmetrical

%soma tempo passado no cliente
%tempoF(D,M,T):- T is D+M.

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
run(Method,S,V):- search(Method,Par,S),
	      write('method:'),write(Method),writepar(Par),nl,
              write('solution:'),write(S),nl,
	      length(S,N),N1 is N-1,write('solution steps:'),write(N1),nl,
		  last(S,LS),write('objetivo:'),write(LS),nl,
		  duracao(S,D),write('tempo:'),write(D), nl,
              valor(LS,V),write('lucro:'),write(V), nl.             
% write parameter (if any):
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

% execute 3 example searches:
q1:- run(depthfirst,LS,V).
q2:- run(iterativedeepening,LS,V).
q3:- run(breadthfirst,LS,V).