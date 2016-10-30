myquicksort(L,L1):-quickacc(L,[],L1).
quickacc([],A,A).
quickacc([H|T],R,L1):-partition(T,Lt,H,Gt), quickacc(Gt,R,Gtsr), quickacc(Lt,[H|Gtsr],L1).
partition([],[],_,[]).
partition([X|Rest],[X|TLt],H,Gt):- X=<H,!, partition(Rest,TLt,H,Gt).
partition([X|Rest],Lt,H,[X|TGt]):- X>H, partition(Rest,Lt,H,TGt).
