maior:: Int -> Int -> Int -> Int -> Int -> Int
maior a b c d e 
				| (a >= b && a >= c && a >= d & a >= e) = a
				| (b >= c && b >=  d && b >= e) = b
				| (c >= d && c >= e )= c
				| (d >= e) = d
				| otherwise = e;
