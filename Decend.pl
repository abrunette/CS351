directlyIn(olga, katarina).
directlyIn(natasha, olga).
directlyIn(irina, natasha).

in(X,Y) :- directlyIn(X,Y).
in(X,Y) :- in(X,Y), in(X,Y).
