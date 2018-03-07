-- Ejercicio 3 pag 128  

divisores n = [x|x<-[1..n], mod n x == 0]


primo y = divisores y == [1,y]

primosInf = [x|x<-[1..], primo x]

listaPrimos n = [(primosInf!!x)|x<-[0..n-1]]

funcionHash tabla = sum[(tabla!!x)*(lp!!x)|x<-[0..length(tabla)-1]]
	where lp = reverse(listaPrimos (length(tabla)))