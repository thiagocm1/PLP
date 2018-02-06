%Butch is a killer.
Mia and Marsellus are married.
Zed is dead.
Marsellus kills everyone who gives Mia a footmassage.
Mia loves everyone who is a good dancer.
Jules eats anything that is nutritious or tasty.

1- killer(butch).
2 - married(mia,marsellus).
3 -dead(zed).
4 - 
kills(marcellus,X) :- footMassage(X,mia).
5 -
loves(mia,X):- dancer(X).
6- 
eats(jules,X):- nutritious(X); tasty(X).


1.5
 Suppose we are working with the following knowledge base:

   wizard(ron). 
   hasWand(harry). 
   quidditchPlayer(harry). 
   wizard(X):-  hasBroom(X),  hasWand(X). 
   hasBroom(X):-  quidditchPlayer(X).
   
