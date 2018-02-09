sum(X,Y,Z) :- Z is X + Y.
prod(X,Y,Z) :-Z is X * Y.

:- initialization(main).

main :-
	repeat,
    read(A),
	read(B),
    sum(A,B,Result),
    write("your sum is "),write(Result), nl, halt(10).
