gasto(AL,G,LG,Result):-  AL >= (G * 0.7), Result is G * LG.
gasto(AL, G, LG , Result):- AL < (G * 0.7), Result is AL * LG.

:- initialization main.

main:-

	repeat,
	read(AL),
	read(G),
	read(LG),
	gasto(AL,G, LG,Result),
	write(Result),
	nl,
	halt(10).


