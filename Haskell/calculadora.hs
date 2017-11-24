calculadora:: String -> Double -> Double -> String
calculadora op num1 num2 
   |(not (num1 == 0)) && num2 == 0 = "ERRO"
   |num1 == 0 || num2 == 0 = "ENTRADA INVALIDA"
   |op == "+" = "SOMA: " ++ show (num1 + num2) 
   |op == "-" = "SUBTRACAO: " ++ show (num1 - num2)
   |op == "*" = "MULTIPLICACAO: " ++ show (num1 *  num2) 
   |otherwise = "DIVISAO: " ++ show (num1/num2)
