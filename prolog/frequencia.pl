frequencia(A, [], 0).
frequencia(A, [A|L], Result) :- frequencia(A, L, Sum), Result is 1 + Sum.
frequencia(A, [D|L], Result) :- frequencia(A, L, Result).

:- initialization main.

main:-
	read_line_to_codes(user_input, A1),
	string_to_atom(A1, A),
	read_line_to_codes(user_input, L2),
	string_chars(L2, L),
	frequencia(A, L, X),
	write(X).
