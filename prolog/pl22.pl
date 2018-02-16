
palavra([H|T],[H2|T2],poetica) :- ultimoElemento([H|T],R), ultimoElemento([H2|T2],R2), R == R2, H == H2.
palavra([H|T],[H2|T2],naopoetica).
	
ultimoElemento([],"").
ultimoElemento([H|[]],R).
ultimoElemento([_|T],R) :- ultimoElemento(T,R).

:- initialization(main).

main :-
	read(P1), nl,
	read(P2), nl,
	palavra(P1,P2,R),
	write(R),
	nl,
	halt(10).
	
