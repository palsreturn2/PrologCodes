factorial(N,F):-facacc(N,1,F).
facacc(0,A,A).
facacc(N,A,F):-N2 is N-1,A2 is A*N,facacc(N2,A2,F).

fac(0,1).
fac(N,F):- N2 is N-1,fac(N2,F2),F is F2*N.
