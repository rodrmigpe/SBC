:-[search].

 travel(Client1,Client2,distance):
travel(X,Y,KM):-(road(X,Y,KM);road(Y,X,KM)). % true if road or symmetrical

 state transition rule s/2: s(City1,City2)
s(N1,N2):- travel(N1,N2,_). % link s(O,D,Dist) with s(O,D)

% evaluation function: (sum of distances for all pairs)
eval([_],0).
eval([City1,City2|R],DS):-
	travel(City1,City2,D),
	eval([City2|R],DR),
	DS is D+DR.

% execute and show a search method result:
run(Method):- search(Method,Par,S),
	      write('method:'),write(Method),writepar(Par),nl,
              write('solution:'),write(S),nl,
	      length(S,N),N1 is N-1,write('solution steps:'),write(N1),nl,
              eval(S,D),write('distance:'),write(D).
% write parameter (if any):
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

% execute 3 example searches:
q1:- run(depthfirst).
q2:- run(iterativedeepening).
q3:- run(breadthfirst).