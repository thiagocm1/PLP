convert(H,M,Result) :- Result is 60 * H + M.

:- initialization(main).
main :-

	repeat,
	read(H),
	read(M),
	convert(H,M,Result),
	write("a hora marcada e "), write(Result), nl, halt(10).
