removeDuplicates(List,Result) :- removeDuplicatesHelper(List,[],Result).

removeDuplicatesHelper([],Acc,Acc).

removeDuplicatesHelper([H|T],Acc,Result) :- member(H,Acc),
	removeDuplicatesHelper(T,Acc,Result).
	
removeDuplicatesHelper([H|T],Acc,Result) :- 
	removeDuplicatesHelper(T,[H|Acc], Result).
	


:- initialization(main).

main:-
	read(List),
	removeDuplicates(List,Result),
	write(Result),
	nl,
	halt(10).
	
