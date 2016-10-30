/*Operations using successor function*/
add(X,0,X).
add(X,su(X2),su(S)):-add(X,X2,S).

minus(X,0,X).
minus(X,su(X2),L):-minus(X,X2,su(L)).

multiply(_,0,0).
multiply(A,su(0),A).
multiply(A,su(B),M):-multiply(A,B,M2),add(M2,A,M).

lessthan(0,su(_)).
lessthan(su(A),su(B)):-lessthan(A,B).

lessthanequal(0,_).
lessthanequal(su(A),su(B)):-lessthanequal(A,B).

divide(A,B,0,A):-lessthan(A,B).
divide(A,B,su(Q),R):-lessthanequal(B,A),minus(A,B,A1),divide(A1,B,Q,R).

absolute(0,0).
absolute(su(H),A):-absolute(H,A1),A is A1+1.

squareroot(su(0),su(0)).
squareroot(N,R):-multiply(R,R,N),minus(R,su(0),R2),multiply(R2,R2,N2),squareroot(N2,R2).
