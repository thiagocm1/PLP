nota(N1,N2) :- ((N1 + N2)/2) >= 7.0, write(" pass = True ").
nota(N1,N2) :- ((N1 + N2)/2) < 7.0, write("pass = False!").

:- initialization (main).
main:- 
	read_line_to_codes(user_input, N12),
	string_to_atom(N12,N1),
	atom_number(N1,N),
	read_line_to_codes(user_input,N22),
	string_to_atom(N22,N21),
	atom_number(N21,N2),
	nota(N,N2).
