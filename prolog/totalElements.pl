totalElements([X|[]],X).

totalElements([X|T],Result) :- totalElementsHelper(T,X,Result).

totalElementsHelper([],Acc,Acc).

totalElementsHelper([X|T],Acc,Result) :-
	NewAcc is Acc + 1,
	totalElementsHelper(T,NewAcc,Result).
	
:- initialization(main).

main:-
	read(List),
	totalElements(List,Result),
	write(Result),
	nl,
	halt(10).

	
