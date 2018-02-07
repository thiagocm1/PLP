male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).
 
female(alice).
female(betsy).
female(diana).

happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).
 
% We can define the Fact that when Bob is happy he runs
 
% :- stands for if
 
runs(albert) :- happy(albert).
% runs(albert). = yes
 
 
% We can check if 2 conditions are true by putting a comma (and)
 
% between questions (CONJUCTIONS)
 
dances(alice) :-
  happy(alice),
  with_albert(alice).
 
% We can define predicates to keep commands brief
 
does_alice_dance :- dances(alice),
       write('When Alice is happy and with Albert she dances').
% Just type does_alice_dance. in the terminal
 
 
% Both rules must be true to get a yes result
 
swims(bob) :-
  happy(bob),
  near_water(bob).
% swims(bob). = no
 
 
% We can create 2 instances and if either comes back true the result
 
% will be yes
 
swims(bill) :-
  happy(bill).
 
swims(bill) :-
  near_water(bill).
% swims(bill). = yes

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).
 
parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).
 
parent(bob, carl).
parent(bob, charlie).


get_grandparent :- parent(X,carl), parent(X,charlie),
format("~w ~s grandparent ~s", [X,"is the "]).

brother(bob, bill).
grand_parent(X,Y) :- parent(Z,X), parent(Y,Z).

blushes(X) :- human(X).
human(derek).

stabs(tybalt,mercutio,sword)>
hates(romeo,X) :- stabs(X,mercutio, sword).
