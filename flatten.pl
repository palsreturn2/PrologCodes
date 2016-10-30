flatten([],[]).
flatten([H|T],L):-islist(H),flatten(H,L1),flatten(T,L2),merge(L1,L2,L).
flatten([H|T],[H|L]):-flatten(T,L).

islist([]).
islist([H|T]).

merge([],L,L).
merge([H|T],L,[H|L2]):-merge(T,L,L2).
