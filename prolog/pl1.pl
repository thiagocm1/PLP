sumElements([H|T],Result) :- sumHelper(T,H,Result).

sumHelper([],Acc,Acc).

sumHelper([H|T],Acc,Result) :- 
	NewAcc is Acc + H, 
	sumHelper(T,NewAcc,Result).


maxElement([R],R).

maxElement([H|T],Result) :- 
	maxElementHelper(T,H,Result).
	
maxElementHelper([],Acc,Acc).

maxElementHelper([H|T],Acc,Result) :- 
	H > Acc,
	NewAcc is H,
	maxElementHelper(T,NewAcc, Result).

maxElementHelper([H|T], Acc, Result) :-
	H =< Acc,
	maxElementHelper(T,Acc,Result).
 

minElement([H|T],Result) :-
	minElementHelper(T,H,Result).

minElementHelper([],Acc,Acc).

minElementHelper([H|T],Acc,Result) :- 
	H < Acc,
	NewAcc is H,
	minElementHelper(T,NewAcc,Result).

minElementHelper([H|T],Acc,Result) :-
	H >= Acc,
	minElementHelper(T,Acc,Result).


:- initialization(main).

main :-
	read(List), 
	nl,
	sumElements(List,Result),
	maxElement(List,Max),
	minElement(List,Min),
	Total is Result + (Max - Min),
	write(Total),
	nl,
	halt(10).
	
