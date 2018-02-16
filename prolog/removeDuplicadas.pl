set([], []).
set([H|T], [H|T1]) :- 
    removeDuplicates(H, T, T2),
    set(T2, T1).

removeDuplicates(_, [], []).

removeDuplicates(H, [H|T], T1) :- removeDuplicates(H, T, T1).

removeDuplicates(X, [H|T], [H|T1]) :-
    X \= H,
    removeDuplicates(X, T, T1).
   
:- initialization(main).

main :-

	read(L1),
	set(L1,L2),
	write(L2),
	nl,
	halt(0).
