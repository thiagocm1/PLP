kth([H|_],1,H).

kth([_|T],K,Result) :- K > 1, NewK is K - 1,
	kth(T,NewK,Result).
	
:- initialization(main).

main:-
	read(List),
	read(Kth),
	kth(List,Kth,Result),
	write(Result),
	nl,
	halt(10).

