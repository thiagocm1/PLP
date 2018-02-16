poetica([H1|T1],[H2|T2],poetica) :- ultima([H1|T1],R1), ultima([H2|T2],R2), R1 == R2, H1 == H2.
poetica([H1|T1],[H2|T2],naopoetica).

primeira([],"").
primeira([H|T], H).

ultima([],"").
ultima([H|[]],H).
ultima([_|T],Y) :- ultima(T,Y).

:- initialization(main).

main :-
 read(X1),nl,
 read(X2),nl,
 poetica(X1,X2,R),nl,
 write(R),nl,
 halt(10).

