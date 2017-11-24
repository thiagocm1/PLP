divisoresNum:: Int -> [Int]
divisoresNum n = [x | x  <- [1..n -1], ((mod n x) == 0)]

perfeito:: Int -> Bool
perfeito num
   |(sum(divisoresNum num) == num) = True
   |otherwise = False

main = do
   num <- getLine
   print (perfeito(read num))
