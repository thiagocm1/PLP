addEspaco:: [Int] -> [Int] -> [Int]
addEspaco [] _ = []
addEspaco _ [] = []
addEspaco (a:as) (b : bs) = (a + b) : addEspaco as bs

