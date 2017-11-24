dividePrimo :: Int -> [Int]
dividePrimo n = [x | x <- [1..n - 1], (mod n x) == 0]

verifica:: Int -> Bool
verifica tamanho = 
   if (length (dividePrimo tamanho) == 1) then True
   else False
