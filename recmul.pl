recmul(N1,N2,M):-recmulacc(N1,N2,0,M).

recmulacc(N1,0,A,A).

recmulacc(N1,N2,A,M):-
	N is N2-1,
	A2 is A+N1,
	recmulacc(N1,N,A2,M).
