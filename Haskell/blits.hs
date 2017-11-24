blitz:: Int -> Int -> Double -> Bool
blitz li dias bafo| li >= 30 || dias >= 30 || bafo >= 0.05 = True
				  | li < 30 || dias < 30 || bafo < 0.05 = False
				  