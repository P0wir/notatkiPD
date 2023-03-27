% kwadrat_listy(+L1,?L2).
% spełniony, gdy elementy listy L2 są kwadratami
% elementów listy L1; lista L1 jest lista liczbowa
% ograniczenia: L1 i L2 są listami liczbowymi.
%---------------------------------------------------

% warunek kończący rekurencję: kwadrat listy pustej
% jest lista pusta.

kwadrat_listy([],[]).

% rekurencja:

kwadrat_listy([H1|T1],[H2|T2]):-
	H2 is H1*H1, kwadrat_listy(T1,T2).


% podwojenie (+L1, ?L2).
% spełniony, gdy elementy listy L2 są podwojonymi
% elementami listy L1, np. L1=[a,b], L2=[a,a,b,b]
% ---------------------------------------------------

% warunek kończący rekurencję: podwojenie listy pustej
% jest listą pustą.

podwojenie([],[]).

% rekurencja:

podwojenie([H1|T1],[H1,H1|T2]):-
		podwojenie(T1,T2).

%powiekszenie

lista([],[]).

lista([H1|T1],[H2|T2]):-
		H2 is H1+1,
		lista(T1,T2).


potrojenie([],[]).
potrojenie([H1|T1],[H2|T2]):-
		H2 is H1*3,
		potrojenie(T1,T2).

%liczba_elem(L,N):
liczba_elem([], 0).
liczba_elem([_|T],N):-
	liczba_elem(T, N1),
	N is N1+1.

listy([],[]).
listy([H1|T1],[H2|T2]):-
	H2 is H1*H1*H1, listy(T1,T2).


