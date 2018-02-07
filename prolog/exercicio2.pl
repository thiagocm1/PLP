woman(jia).
man(john).
wealthy(john).
healthy(jia).
healthy(john).
traveler(X) :- healthy(X), wealthy(X).
travel(X) :- traveler(X).


