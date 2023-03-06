% PROGRAM: klocki_1
% Baza wiedzy o układzie klocków
% Definiowanie predykaty:
%     na/2
% ==============================

% na(X/Y)
% opis: spełniony, gdy klocek X leży na
% bespośrednio na klocku Y
% -------------------------------------na/2
	na(c,a).
	na(c,b).
	na(d,c).
% -------------------------------------na/2
% pod(X/Y)
% opis: spełniony, gdy klocek X leży
% bespośrednio pod klockiem Y
% -------------------------------------na/2
	pod(X,Y):-na(Y,X).
% -------------------------------------na/2
