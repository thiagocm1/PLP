estacionamento(moto,5).
estacionamento(carro,10).
estacionamento(largo,30).

:- initialization main.

main :-
	read(V),
	read(P),
	estacionamento(V,P),
	write(P), nl,
	halt(10).
