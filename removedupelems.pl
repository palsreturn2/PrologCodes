removedupelems([],[]).
removedupelems([H|R],L):-ourmember(H,R),removedupelems(R,L).
removedupelems([H|L1],[H|L2]):-removedupelems(L1,L2).

ourmember([],_).
ourmember(A,[A|_]).
ourmember(A,[_|Rest]):-ourmember(A,Rest).

removedup(L,E):-removedupacc(L,[],E).
removedupacc([],A,A).
removedupacc([H|T],A,E):-ourmember(H,A),removedupacc(T,A,E).
removedupacc([H|T],A,E):- removedupacc(T,[H|A],E).

