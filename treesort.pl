append([],L,L).
append([X|L1],L2,[X|L3]):-append(L1,L2,L3).
linearize(nil,[]).
linearize(tree(Root,Left,Right),L):-linearize(Left,L1),linearize(Right,L2),append(L1,[Root|L2],L).
insert_element([],T,T).
insert_element([X],nil,T):-insert_element([],tree(X,nil,nil),T).
insert_element([X|Rest],nil,T):-insert_element(Rest,tree(X,nil,nil),T).
insert_element([X|Rest],tree(Root,Left,Right),T):-X<Root,!,insert_element([X],Left,Left1),insert_element(Rest,tree(Root,Left1,Right),T).
insert_element([X|Rest],tree(Root,Left,Right),T):-Root=<X,insert_element([X],Right,Right1),insert_element(Rest,tree(Root,Left,Right1),T).
tree_sort(L,L1):-insert_element(L,nil,T),linearize(T,L1).

