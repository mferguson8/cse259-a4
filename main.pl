wife(widow, i).
wife(redhair, dad).
daughter(redhair, widow).
daughter(Child, Father) :-
	wife(Mother, Father), 
	daughter(Child, Mother).
father(dad, i).
son_in_law(Child, Spouse) :-
	wife(Daughter, Child), 
	daughter(Daughter, Spouse).
mother(Mother, Child) :-
	wife(Mother, Father), 
	father(Father, Child).
daughter(Child, Father) :-
	wife(Mother, Father), 
	daughter(Child, Mother).
