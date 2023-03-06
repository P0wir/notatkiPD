% PROGRAM: klocki_1
% Baza wiedzy o układzie klocków
% Definiowanie predykaty:
%     na/2
%     pod/2
%     miedzy/3	
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
% miedzy(X,Y,Z)
% opis: spełniony, gdy klocek Y pomiedzy
% klockami Y,Z
% -------------------------------------miedzy/3
	miedzy(X,Y,Z):-na(X,Y),pod(X,Z).
	miedzy(X,Y,Z):-na(X,Z),pod(X,Y).
% -------------------------------------miedzy/3
/*
Program składa się z 6 klauzul.
Program zawiera 3 definicję relacji.
Program składa się z 3 faktów i z 3 reguł.

*/

/*
Sesja prologowa

1. Czy klocek d leży na klocku?
?- na(d,c)
true.
*/
