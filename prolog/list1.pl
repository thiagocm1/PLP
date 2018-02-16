concat([],List,List).
concat([H|T], List2, [H|Result]) :- concat(T,List2,Result).
