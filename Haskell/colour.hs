colour:: Int -> Int -> Int -> String
colour r g b 
   | (r < 128 || g < 128 || b < 128) = "PRETO"
   | (r >= 128 && g >= 128 && b >= 128) = "BRANCO"
 


main = do
   r <- getLine
   g <- getLine
   b<- getLine
   putStrLn (show (colour (read r) (read g) (read b)))