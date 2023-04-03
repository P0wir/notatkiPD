% element(E,L)
% spełniony, gdy E jest elementem listy L
%---------------------------------------------------

% warunek kończący rekurencję: głowa listy jest elementem listy
	element(E,[E|_]).

% rekurencja: jeżeli E jest elementem listy L, a nie jest jej głową, to jest elementem ogona
	element(E,[_|T]):-element(E,T).

konkat([],L,L).
konkat([H|T1],L,[H|T2]):-konkat(T1,L,T2).


%reverse(L1,L2).
reverse([],[]).
reverse([H|T1],L):-reverse(T1,T2),konkat(T2,[H],L).

% Predykaty

% dodatni(X)
% spełniony, gdy X liczbą dodatnią

	dodatni(X):-X>0.

% Lista_Dodatnia(L)
% spełniony, gdy wszystkie elementy listy są dodatnie

	lista_dodatnia(L):-
		maplist(dodatni,L).

% wiekszy_od(X,Y)
% spelniony gdy Y jest wieksze od X

	wiekszy_od(X,Y):- Y>X.

% wiekszy_od_lista(+X,+L).
% spełniony gdy wszystkie elementy listy L
% sa wieksze od X

	wiekszy_od_lista(X,L):-
		maplist(wiekszy_od(X),L).

	kwadrat(X,Y):- Y is X*X.
	kwadrat_listy(L1,L2):-maplist(kwadrat,L1,L2).

	mniejszy(X,Y):- Y is X-1.
	mniejszy_lista(L1,L2):-maplist(mniejszy,L1,L2).

