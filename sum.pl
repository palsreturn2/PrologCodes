/*Sum of elements in an array*/
sum([],0).
sum([H|T],S):-sum(T,S2),S is S2+H.

/*Length of an array*/
len([],0).
len([_|T],C):-len(T,C2), C is C2+1.

/*Mean of the number of elements in an array*/
mean([],0).
mean(L,M):-sum(L,S),len(L,C),M is S/C.

/*Mean of the numbers using accumulator*/
mean2(L,M):-meanacc(L,0,M).
meanacc([],A,0).
meanacc([H|T],C,M):-C2 is C+1,meanacc(T,C2,M2),M is ((M2*C)+H)/C2.
