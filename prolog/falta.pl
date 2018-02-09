cost(vcr,400).
cost(roupa,300).
cost(batata,2).


howmuch(X,Y):- cost(X,Y), write("The price of "), write(X),
 write(" cost "),
 write(Y),nl.

:- initialization(main).
main :-

	repeat,
	read(X),
	read(Y),
	howmuch(X,Y), nl, halt(10).

