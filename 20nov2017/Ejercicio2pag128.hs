-- Ejercicio 2 pag 128

puntos::Double ->[(Double, Double)]
puntos t = [(x,y)|x<-lista, y<-lista]
	where lista = [x|x<-[-1+t/2, -1+(t/2)+t..1-t/2]]
	
distancias t = [sqrt(((x-0)^2)+((y-0)^2)) | (x,y)<-puntos t, sqrt(((x-0)^2)+((y-0)^2))<= 1]


piRedondeado t radio = ((t^2)*fromIntegral(length (distancias t)))/radio

