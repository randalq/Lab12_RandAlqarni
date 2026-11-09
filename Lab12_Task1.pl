edge('Makkah', 'Madinah').
edge('Makkah', 'Riyadh').
edge('Madinah', 'Makkah').
edge('Madinah', 'Tabuk').
edge('Madinah', 'Taif').
edge('Madinah', 'Riyadh').
edge('Tabuk', 'Taif').
edge('Taif', 'Dammam').
edge('Riyadh', 'Dammam').
edge('Dammam', 'Riyadh').
edge('Dammam', 'Qatif').
edge('Qatif', 'Madinah').

travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

path(X, X, P, P).
path(From, To, Visited, Path) :-
    edge(From, Z),
    not(member(Z, Visited)),
    path(Z, To, [Z | Visited], Path).
