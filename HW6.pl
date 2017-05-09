parent(joe,mary).
parent(sue,mary).
parent(mary,bill).
parent(john,bob).
parent(dana,bob).
parent(bob,bill).
parent(marie,sandy).
parent(bill,sandy).
parent(scott,marie).
parent(bill,ralph).
parent(marie,ralph).
parent(susan,marie).

male(joe).
male(bill).
male(john).
male(bob).
male(scott).
male(ralph).

female(sue).
female(dana).
female(mary).
female(marie).
female(sandy).
female(susan).

/*A is a parent of B*/
parent(A,B) :- mother(A,B); father(A,B).

/*X is grandparent of Z*/
grandparent(X,Z) :- parent(X,Y), parent(Y,Z).

/*A is an older direct relative of B*/
ancestor(A,B) :- parent(A,B); grandparent(A,B); grandparent(A,C), parent(C,B).

/*A is a younger direct relative of B*/
descendant(A,B) :- child(A,B); grandchild(A,B).

/*A shares a parent with B*/
sibling(A,B) :- parent(C,A), parent(C,B).

/*A is a child of B*/
child(A,B) :- son(A,B); daughter(A,B).

/*A is a grandchild of B*/
grandchild(A,B) :- child(A,C), child(C,B).

/*A is the father of B*/
father(A,B) :- child(B,A), male(A).

/*A is the mother of B*/
mother(A,B) :- child(B,A), female(A).

/*A is the grandmother of B*/
grandmother(A,B) :- grandchild(B,A), female(A).

/*A is the grandfather of B*/
grandfather(A,B) :- grandchild(B,A), male(A).

/*A is the son of B and is male*/
son(A,B) :- parent(B,A), male(A).

/*A is the daughter of B and is female*/
daughter(A,B) :- parent(B,A), female(A).

/*A is the granddaughter of B and is female*/
granddaughter(A,B) :- grandchild(A,B), female(A).

/*A is the grandson of B and is male*/
grandson(A,B) :- grandchild(A,B), male(A).

/*A is female and a sibling of B, regardless of B's gender*/
sister(A,B) :- sibling(A,B), female(A).

/*A is male and a sibling of B, regardless of B's gender*/
brother(A,B) :- sibling(A,B), male(A).


