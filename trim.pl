/*First N elements removed*/
trim(_,[],[]).
trim(0,A,A).
trim(N,[H|T],L):-N2 is N-1, trim(N2,T,L).

/*Last N elements removed*/
trimlast(_,[],[]).
trimlast(0,A,[]).
trimlast(N,[H|T],[H|L]):- N2 is N-1, trimlast(N2,T,L).
