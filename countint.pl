/*Counting number of integers greater than 100*/
countint(L,C):-countintacc(L,0,C).

countintacc([],A,A).

countintacc([H|T],C,S):-
	H>100,
	C2 is C+1,
	countintacc(T,C2,S).
countintacc([H|T],C,S):-
	H=<100,
	countintacc(T,C,S).
