/*Bubble Sort*/
bubblesort([],[]).
bubblesort(L,[H|S]):-sendtolast(L,L1,H),bubblesort(L1,S).

sendtolast([X],[],X).
sendtolast([X|[Y|L]],[Y|S],M):-X=<Y,sendtolast([X|L],S,M).
sendtolast([X|[Y|L]],[X|S],M):-X>Y, sendtolast([Y|L],S,M).



