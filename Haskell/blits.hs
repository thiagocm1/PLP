blitz:: Int -> Int -> Double -> Bool
blitz li dias bafo
   | li >= 30 || dias >= 30 || bafo > 0.05 = True
   | li < 30 || dias < 30 || bafo <= 0.05 = False

main = do 
   li <- getLine
   dias <- getLine
   bafo <- getLine
   print (blitz (read li) (read dias) (read bafo))
