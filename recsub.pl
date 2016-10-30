recsub(N1,N2,S):- recsubacc(N1,N2,N1,S).

recsubacc(N1,0,A,A).

recsubacc(N1,N2,A,S):-
	N is N2-1,
	A2 is A-1,
	recsubacc(N1,N,A2,S).
