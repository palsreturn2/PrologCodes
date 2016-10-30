/*Replace first occurance of X with Y*/
replace([],_,_,[]).
replace([X|T],X,Y,[Y|T]).
replace([H|T],X,Y,[H|T2]):-replace(T,X,Y,T2).


