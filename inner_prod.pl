inner_prod([],[],0).
inner_prod([H1|L1],[H2|L2],X):-inner_prod(L1,L2,X2),X is (X2+H1*H2).
