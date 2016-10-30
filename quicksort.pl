/*Quicksort without using accumulator*/
quicksort([],[]).
quicksort([H|L],S):-partition(L,Lt,H,Gt),quicksort(Lt,S1),quicksort(Gt,S2),merge(S1,[H|S2],S).

partition([],[],_,[]).
partition([X|L],[X|Lt],H,Gt):-X=<H,!,partition(L,Lt,H,Gt).
partition([X|L],Lt,H,[X|Gt]):-X>H,!,partition(L,Lt,H,Gt).

merge([],L,L).
merge([X|L],L2,[X|S]):-merge(L,L2,S).
