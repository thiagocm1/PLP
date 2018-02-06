http://athena.ecs.csus.edu/~logicp/exercises.html

(1) Maria reads logic programming book by author peter lucas.
author(peter).
book(isLogic).
programmingBook(X) :- author(X).
reading(maria,Y):- programmingBook(Y).
(2) Anyone likes shopping if she is a girl.
(3) Who likes shopping?

girl(ana).
boy(luis).
likesShopping(X):- girl(X).


woman(jia).
man(john).
wealthy(john).
healthy(jia).
healthy(john).
traveler(X) :- healthy(X), wealthy(X).
travel(X) :- traveler(X).

vegetarian(jose).
vegetarian(james).
vegetable(carrot).
vegetable(egg_plant).
likes(jose,X) :- vegetable(X).
loves(Who, egg_plant):- vegetarian(Who).
