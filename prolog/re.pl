reverseList([H|T],Result) :- reverseListHelper(T,[H],Result).

reverseListHelper([],Acc,Acc).

reverseListHelper([H|T],Acc, Result) :-
	reverseListHelper(T,[H|Acc],Result).
	
:- initialization(main).

main:-
	read(List),
	reverseList(List,Result),
	write(Result),
	nl,
	halt(10).


