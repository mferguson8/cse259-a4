wife(widow, i).
wife(redhair, dad).
daughter(redhair, widow).
father(dad, i).

married(i,widow).
married(dad,redhair).

male(i).
male(dad).
male(bouncing_baby_boy).
male(onrun).
female(widow).
female(redhair).
%rules
husband(X, Y) :-
	wife(Y, X).
son(X, Y) :-
	child(X, Y), 
	male(X).
daughter(X, Y) :-
	child(X, Y), 
	female(X).
mother(X, Y) :-
	female(X), 
	child(Y, X).
father(X, Y) :-
	male(X), 
	child(Y, X).
uncle(X, Y) :-
	brother(X, Z), 
	parent(Z, Y).
son_in_law(X, Y) :-
	married(X, Z), 
	parent(Z, Y), 
	male(X).
grandchild(X, Y) :-
	grandmother(Y, X)
	vgrandfather(Y, X).
grandmother(X, Y) :-
	mother(X, Z), 
	parent(Z, Y).
grandfather(X, Y) :-
	father(X, Z), 
	parent(Z, Y).