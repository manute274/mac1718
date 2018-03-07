--Ejercicio 4 pag 129

-- funcion pertenece
pertenece :: Eq a => a -> [a] -> Bool
pertenece elemento [] = False
pertenece elemento conjunto = if(elemento == head(conjunto)) then True
							  else pertenece elemento (tail(conjunto))
							  

							  
--funcion esConjunto (propia)
esConjunto [] = True
esConjunto conjunto = if(pertenece (head(conjunto)) (tail(conjunto))) then False
					  else esConjunto (tail(conjunto))
			
			
--funcion subconjunto

