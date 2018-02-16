lastElement([Result|[]],Result).
lastElement([_|T],Result) :- lastElement(T,Result).


:- initialization(main).

main:-
	read(List),
	lastElement(List,Result),
	write(Result),
	nl,
	halt(10).
