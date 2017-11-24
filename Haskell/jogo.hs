jogo:: Int -> String
jogo a  
   | entrada == a = "ACERTOU"
   | entrada < a = "MAIOR"
   | otherwise = "MENOR"
   where entrada = (jogo a)