--ejercicio5
evaluaciones::[a]->[(a->b)]->[[b]]
evaluaciones x y = [[n m|n<-y]|m<-x]

--para comprobar la función anterior
doble x = 2*x
triple x = 3*x

--ejercicio6

compara x = [[(!!)n 0 >0, (!!)n 1==0, (!!)n 2==0]|n<-x]

--(compara.evaluaciones [0,(3.14/2),((-3.14)/2),3.14,(-3.14)])[sin,cos,tan]


--ejercicio7
--volvemos a por los ejercicios 1 y 2

divisores n = [x|x<-[1..n], mod n x == 0]

primo y = divisores y == [1,y]

divisible x y = resto == 0
   where resto = mod x y
   
divisoresPrimos a = [x|x<-d, primo x]
	where d = divisores a
	
descomposicion a = [(x,maximum [y|y<-[1..a],divisible a (x^y)])|x<-d]
	where d = divisoresPrimos a
   
