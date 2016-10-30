/*Interleave alternate elements*/
interleave(L,[],L).
interleave([],L,L).
interleave([H1|L1],[H2|L2],[H1|[H2|L]]):-interleave(L1,L2,L).
