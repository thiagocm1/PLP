iguais:: Int -> Int -> Int -> Int
iguais a b c
   | a == b && a == c && b == c = 3
   | (a == b) || (c == b) || (a == c) = 2
   | otherwise = 0

