primo :: (Int)-> Bool
primo n | length [y |y <- [1.. n-1], (mod n y) == 0] == 1 = True
	    |otherwise = False


verificaPrimo :: Int-> String
verificaPrimo x 
   |((primo (x + 2)) && primo(x)) = "PRIMO CASADO!"
   | primo x = "PRIMO!"
   | otherwise = "NAO PRIMO!"

main = do
   input <- getLine
   let num =  (read input)
   print (verificaPrimo num)
 
