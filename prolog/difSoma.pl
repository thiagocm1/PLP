soma([],0).
soma([X|Y], C) :- soma(Y, C1), C is X + C1.

maior([H],H).
maior([X|Y], R) :- maior(Y,Maior), X > Maior, R is X.
maior([X|Y], R):- maior(Y,Maior), X =< Maior, R is Maior.

menor([H],H).
menor([X|Y], R) :- menor(Y,Menor), X < Menor, R is X.
menor([X|Y], R):- menor(Y,Menor), X >= Menor, R is Menor.

:- initialization(main).

main:-
read(Input),
soma(Input,R1),
maior(Input,MAX),
menor(Input,MIN),
Calculo is MAX - MIN,
Resposta is Calculo + R1,
write(Resposta), nl,
halt(10).


