qntVezes::String -> [String] -> Int
qntVezes p [] = 0
qntVezes p (l:ls)
	|p == l = 1+qntVezes p ls
	|otherwise = qntVezes p ls

apagarPalavra:: String -> [String]->[String]
apagarPalavra p []=[]
apagarPalavra p (x:xs)
	|p==x = apagarPalavra p xs
	|otherwise = x: apagarPalavra p xs

palavraQnt::[String] -> [String]
palavraQnt [] = []
palavraQnt (x: xs)
	|qntVezes x (x:xs) == 1 = x: palavraQnt xs
	|otherwise = x: palavraQnt (apagarPalavra x xs) 

palavras::[String]->[(String, Int)]
palavras xs = tuplaPalavras xs (palavraQnt xs)

tuplaPalavras:: [String] -> [String] -> [(String, Int)]
tuplaPalavras xs [] = []
tuplaPalavras xs (y: sr) = (y, qntVezes y xs): tuplaPalavras xs sr

main = do
	inputLista <- getLine
	print(palavras (read inputLista))