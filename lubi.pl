% PROGRAM: grupa_osob
% baza wiedzy kto kogo lubi
% definiowane predykaty:
%	lubi(X,Y)
%	jarosz(X)
%	niePali(X)
%	czyta(X)
%	sport(X)
% ==============================
% jarosz(X)
% ----------------------------------jarosz/1
	jarosz(ola).
	jarosz(ewa).
	jarosz(jan).
	jarosz(pawel).
% ----------------------------------jarosz/1
% niePali(X)
% ----------------------------------niePali/1
	niePali(ola).
	niePali(ewa).
	niePali(jan).
% ----------------------------------niePali/1
% sport(X)
% ----------------------------------sport/1
	sport(ola).
	sport(jan).
	sport(piotr).
	sport(pawel).
% ----------------------------------sport/1
% czyta(X)
% ----------------------------------zyta/1
	czyta(ola).
	czyta(iza).
	czyta(piotr).
% ----------------------------------czyta/1
% lubi(X,Y)
% -------------------------------------lubi/2
	lubi(ola,Y):-jarosz(Y),sport(Y).
	lubi(ewa,Y):-jarosz(Y),niePali(Y).
	lubi(iza,Y):-sport(Y),niePali(Y).
	lubi(iza,Y):-czyta(Y).
	lubi(janek,Y):-sport(Y).
	lubi(piotr,Y):-jarosz(Y),sport(Y).
	lubi(piotr, Y):-czyta(Y).
	lubi(pawel, Y):-jarosz(Y),sport(Y),czyta(Y).
% -------------------------------------lubi/2
	
