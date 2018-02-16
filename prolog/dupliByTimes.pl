dupli(L1,N,L2) :- dupli(L1,N,L2,N).

dupli([],_,[],_).
dupli([_|Xs],N,Ys,0) :- dupli(Xs,N,Ys,N).
dupli([X|Xs],N,[X|Ys],K) :- K > 0, NewK is K - 1, dupli([X|Xs],N,Ys,NewK).


:- initialization(main).

main:-
	read(List),
	read(N),
	dupli(List,N,Result),
	write(Result),
	nl,
	halt(10).
