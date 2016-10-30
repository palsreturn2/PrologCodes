makeheap([],X,X).
makeheap(L,X,H):- insert2end(L,X,L2),heapify(L2,H).

insert2end([],X,X).
insert2end([H|R],X,L2):-insert2end(R,X,L2).

getelem([H|R],0,H).
getelem([H|R],C,X):-C2 is C-1,getelem(R,C2,X).

heapify([],[])
