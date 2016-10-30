toh(1,A,_,C):-move(A,C).
toh(N,A,B,C):-N>1,N2 is N-1, toh(N2,A,C,B), move(A,B), toh(N2,C,B,A).

move([],_).
move(_,[]).
move([],[]).
move([X|A],[X|C]):-move(A,C).
