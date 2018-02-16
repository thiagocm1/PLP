last_but_one(X,[X,_]).
last_but_one(X,[_,Y|Ys]) :- last_but_one(X,[Y|Ys]).
:- initialization(main).

main:-
	read(List),
	last_but_one(List,[_|Result]),
	write(Result),
	nl,
	halt(10).
