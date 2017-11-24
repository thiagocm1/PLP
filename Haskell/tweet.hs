tweet:: String -> Int
tweet palavra |tamanho > 140 = 140
			  |tamanho <= 140 = tamanho
			  where tamanho = length palavra