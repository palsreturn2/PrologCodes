recdiv(N1,N2,Q,R):-recdivacc(N1,N2,0,Q,R).

recdivacc(N1,N2,A,A,N1):- N1<N2.

recdivacc(N1,N2,A,Q,R):-
	N3 is N1-N2,
	A2 is A+1,
	recdivacc(N3,N2,A2,Q,R).
