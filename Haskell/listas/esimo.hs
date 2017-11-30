esimo:: [Int] -> Int -> Int
esimo (head: body) n
   |n == 1 = head
   |otherwise = esimo body (n - 1)

main = do
   lista <- getLine
   num <- getLine
   print( esimo(read lista) (read num))
   