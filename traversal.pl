inorder(nil,[]).
inorder(bst(nil,X,nil),[X]).
inorder(bst(Left,Root,Right),T):-inorder(Left,L),inorder(Right,R),merge(L,[Root|R],T).

merge([],L,L).
merge([X|L1],L2,[X|L]):-merge(L1,L2,L).

preorder(nil,[]).
preorder(bt(Left,Root,Right),T):-preorder(Left,L),preorder(Right,R),merge([Root|L],R,T).

postorder(nil,[]).
postorder(bt(Left,Root,Right),T):-postorder(Left,L),postorder(Right,R),merge(L,R,T1),merge(T1,[Root],T).
