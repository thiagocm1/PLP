reverseList([H|T], ReversedList) :-
	helper(T,[H], ReversedList).

helper([],Acc, Acc).

helper([H|T], Acc, ReversedList) :-
	helper(T,[H|Acc], ReversedList).

:- initialization(main).

main:-
	read(List),
	reverseList(List,Result),
	write(Result),
	nl,
	halt(10).
