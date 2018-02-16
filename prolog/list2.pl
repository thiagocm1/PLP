removeLastElement([_|[]], []).
removeLastElement([H|T],[H|Result]) :- removeLastElement(T,Result).

:- initialization(main).

main:-
	read(List),
	removeLastElement(List,Result),
	write(Result),
	nl,
	halt(10).
