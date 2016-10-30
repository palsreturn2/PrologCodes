/*Split list into 2 list*/
splitlist([],[],[]).
splitlist([H|T],[H|T1],L2):-
	H=<0,
	splitlist(T,T1,L2).

splitlist([H|T],L1,[H|T2]):-
	H>0,
	splitlist(T,L1,T2).
