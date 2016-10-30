/*Last element removed*/
cutlast([],[]).
cutlast(A,[]):-ourlength(A,1).
cutlast([H|T],[H|T2]):-cutlast(T,T2).

ourlength(L,N):- ourlengthacc(L,0,N).

ourlengthacc([],A,A).

ourlengthacc([H|T],A,S):-
	A2 is A+1,
	ourlengthacc(T,A2,S).
	
