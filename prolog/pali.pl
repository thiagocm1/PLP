palindrome([X|[]],X).
palindrome([X|T]) :- (reverse([X|T],[X|T]) =:= "True",
	write("eh palindromo")); (reverse([X|T],[X|T]) =:= "False",
	write("nao eh palindromo")).


:- initialization(main).

main:-
	read(List),
	palindrome(List);
	nl,
	halt(10).
