myremove([],[]).
myremove(L,L2):-removeacc(L,[],L2).


removeacc([],A,A).
removeacc([H|T],A,L2):- ourmember(H,A),!,removeacc(T,A,L2).
removeacc([H|T],A,L2):-removeacc(T,[H|A],L2).

ourmember([],_).
ourmember(A,[A|_]):-!.
ourmember(A,[H|T]):-ourmember(A,T).
