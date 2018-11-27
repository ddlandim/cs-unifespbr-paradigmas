ultimo([E], E):-!.
ultimo([_|Cauda], E):-ultimo(Cauda, E).

comprimento([], 0).
comprimento([_|Cauda], N):-comprimento(Cauda, N1), N is 1+N1.

comp_acc([], Acc, Acc).
comp_acc([_|Cauda], C, Acc):-C1 is 1+C, comp_acc(Cauda, C1, Acc).

inverte([], L, L):-!.
inverte([E|L1], L2, L3):-inverte(L1, [E|L2], L3).

remove([], _, []).
remove([E|C], E, C) :- !.
remove([X|C], E, [X|L]) :- remove(C, E, L).

remove_all([], _, []).
remove_all([E|C], E, L) :- remove_all(C, E, L).
remove_all([X|C], E, [X|L]) :- X\==E, remove_all(C, E, L).

member2(X,X):-!.
member2(X,[E|C]):-member2(X,E);member2(X,C),!.