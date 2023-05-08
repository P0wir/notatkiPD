abs::Float->Float
abs x=if x<0 then (-x) else x

abs2 x
 |x<0 =(-x)
 |otherwise =x

min::Float->Float->Float
min x y = if x<y then x else y

min2 x y
 |x<y=x
 |otherwise =y

sgn x
 |x>0=1
 |x==0=0
 |otherwise =(-1)

--funkcja albo_albo
albo_albo1::(Bool,Bool)->Bool
albo_albo1 (p,q)=case (p,q) of (True,True)->False
			       (True,False)->True
			       (False,True)->True
			       (False,False)->False

albos(p,q)
 |p==q = False
 |otherwise =True

impli(p,q)
 |p==q = True
 |p == False = True
 |otherwise = False

impli1::(Bool,Bool)->Bool
impli1 (p,q)=case (p,q) of (True,True)->True
			   (True,False)->False
			   (False,True)->True
			   (False,False)->True


albo_albo4 (p,q) = (p||q)&&(not(p&&q))
albo_albo5 (p,q) = not p&&q || not q&&p

impli2::(Bool,Bool)->Bool
impli2(p,q) = if p==False || p==q then True else False
			       
			       
