valor:: String -> Float -> Float
valor tipo qtd
   |(tipo == "carro") = (5.0 + (qtd * 1.5))
   |(tipo == "moto") = (2.0 + (qtd * 1.5))
   |(tipo == "van") = (15.0 + (qtd * 1.5))
   |(tipo == "onibus") = (50.0 + (qtd * 1.5))
   |otherwise = qtd * 1.5

main = do 
	tipo <- getLine
	qtd <- getLine
	print (valor (tipo) (read qtd))
