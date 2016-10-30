/*Reverse a list*/
listrev(L,R):-listrevacc(L,[],R).
listrevacc([],R,R).
listrevacc([H|T],A,R):-listrevacc(T,[H|A],R).

