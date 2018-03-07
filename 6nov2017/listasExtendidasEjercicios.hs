--ejercicio 1
divisores n = [x|x<-[1..n], mod n x == 0]

--ejercicio 2
primo y = divisores y == [1,y]

--ejercicio 3
primosencien = [x|x<-[1..100], primo x]

--ejercicio 4
mapea :: (a -> b) -> [a] -> [b]
mapea x y = [x n|n<-y]

filtra:: (a -> Bool) -> [a] -> [a]
filtra x y = [n|n<-y, x n]