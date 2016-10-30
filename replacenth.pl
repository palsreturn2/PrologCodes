replacenth([],_,_,[]).
replacenth([_|T],0,X,[X|T]).
replacenth([H|T],N,X,[H|T2]):-
	N>0,
	N2 is N-1,
	replacenth(T,N2,X,T2).
