
avg:: Double -> Double -> String
avg hits atBats |avg <= 0.200 = "Terrible Batting Average"
				|avg <= 0.250 = "Average player"
				| avg <= 0.280 = "You're doing pretty good"
				| otherwise = "You're a SuperStar"
				where avg = hits / atBats