aviao(A,P) :- repeat,
			read(A),
			read(P),
			calculo(A,P,Result).
calculo(A,P,Result) :-  (P =:= A, Result =:= A),write("OK").
calculo(A,P,Result) :- (abs(A - P) > abs(A - Result)), write("ADEQUADO"),
nl, aviao(A,Result).
calculo(A,P,Result) :- write("PERIGO"),nl,aviao(A,Result).

:- initialization main.
main :-
	repeat,
	read(A),
	read(B),
	aviao(A,B),
	nl,
	halt(10).


