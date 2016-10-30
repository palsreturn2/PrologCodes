deletenth([],_,[]).

deletenth([_|L],0,L).

deletenth([H|L],N,[H|L2]):-
	N>0,
	N2 is N-1,
	deletenth(L,N2,L2).
	
