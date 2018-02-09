passagem(V) :- V > 10, write("Passagem cara"), nl,
write("Valor: "), write(V).
passagem(V):- V == 10, write("Passagem ok").
passagem(V) :- V < 10, write("Passagem barata"), nl,
write("Valor: "), write(V).

:- initialization (main).
main :-
	read_line_to_codes(user_input,V2),
	string_to_atom(V2,V1),
	atom_number(V1,V),
	passagem(V),
	nl,
	write("Obrigado!"), nl, halt(0).
