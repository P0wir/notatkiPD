--lista_wiekszy_o1 (definicja rekurencyjna)

lista_razy2::[Int]->[Int]
lista_razy2 []=[]
lista_razy2 (x:xs)=(x*2):(lista_razy2 xs)

razy_dwa x = x*x
razy_dwa_lista[]=[]
razy_dwa_lista(x:xs)=(razy_dwa x):(razy_dwa_lista xs)

mniejszy_o2 x = x-2
lista_mniejsza_o2 xs = map mniejszy_o2 xs

--kwadrat_lista (definicja z kwalifikatorem)
kwadrat_lista::[Int]->[Int]

kwadrat_lista xs=[x*x|x<-xs]

lista_razy_5::[Int]->[Int]
lista_razy_5 xs=[x*5|x<-xs]

lista_mniejszao1::[Int]->[Int]
lista_mniejszao1 xs=[x-1|x<-xs]

suma_lista::[Int]->Int
suma_lista [] = 0
suma_lista (x:xs) = x + suma_lista xs

usun_ostatni::[a]->[a]
usun_ostatni[_] = []
usun_ostatni(x:xs)=x:usun_ostatni xs
