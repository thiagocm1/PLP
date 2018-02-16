removeDuplicates(List	,Result):- helper(List,[],Result).

helper([],Acc,Acc).

helper([H|T],Acc,Result) :- member(H,Acc), helper(T,Acc,Result).

helper([H|T],Acc,Result) :- helper(T, [H|Acc], Result).

:- initialization(main).

main:-
	read(List),
	removeDuplicates(List,Result),
	sort(Result,X),
	write(X),
	nl,
	halt(10).
