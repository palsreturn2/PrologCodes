/*Recursive addition*/
recadd(N1,N2,S):- recaddacc(N1,N2,0,S).

recaddacc(0,0,A,A).
recaddacc(N1,0,A,S):-recaddacc(0,N1,A,S).

recaddacc(N1,N2,A,S):-
	N is N2-1,
	A2 is A+1,
	recaddacc(N1,N,A2,S).

recaddacc(N1,0,A,S):-recaddacc(0,N1,A,S).
