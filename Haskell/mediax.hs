media:: Double -> Double -> Double -> String
media nota1 nota2 mediaX |(media >= mediaX) = "pass = True"
                         |otherwise = "pass = False"
                         where media = (nota1 + nota2)/2.0  