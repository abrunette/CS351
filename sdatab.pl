in(joe,cs111).
in(joe,cs351).
in(joe,math100).
in(mary,cs111).
in(mary,math100).
in(bob,eng251).
in(bob,soc150).

%comment
shareSomeClass(X,Y) :- in(X,Y), in(Y,Z).
