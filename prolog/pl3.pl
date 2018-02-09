rgb(R,G,B):- ((R < 128); (G < 128); (B < 128)), write("PRETO").
rgb(R,G,B):- (R >= 128), (G >= 128), (B >= 128) , write("BRANCO").

:- initialization (main).
main :- 
	read_line_to_codes(user_input,R2),
	string_to_atom(R2,R1),
	atom_number(R1,R),
	read_line_to_codes(user_input,G2),
	string_to_atom(G2,G1),
	atom_number(G1,G),
	read_line_to_codes(user_input,B2),
	string_to_atom(B2,B1),
	atom_number(B1,B),
	rgb(R,G,B), nl, halt(0).
