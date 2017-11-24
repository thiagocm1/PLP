divideNumero:: Int -> [Int]
divideNumero n = [x | x <- [1 .. n - 1],(mod x n) == 0]

verificador:: Int -> Bool
verificador tamanho =
   if (sum (divideNumero tamanho)) == tamanho then True
   else False

