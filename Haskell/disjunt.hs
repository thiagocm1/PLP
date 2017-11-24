union::[Int]->[Int]->[Int]
union xs [] = xs
uniao xs (y:ys)
	|diff y xs == True = union (xs++[y]) ys
	|otherwise = uniao xs ys

diff:: Int -> [Int]->Bool
diff n [] = True
diff n (l:ls)
	|n==l=False
	|otherwise = diff n ls
