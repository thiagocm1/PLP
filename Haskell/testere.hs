median:: Float -> Float -> String
median x y  
			| (media >= 7.0) = "pass = true"
			| otherwise = "pass = false"
			where media = ( x + y )/2.0