uniao:: [Int] -> [Int] -> [Int]
uniao xs [] = xs
uniao xs (y :ys)
   |diff y xs == True = uniao (xs ++ [y]) ys
   |otherwise = uniao xs ys 

diff:: Int -> [Int] -> Bool
diff n [] = True
diff n (a:as)
   | n == a = False
   |otherwise = diff n as 
