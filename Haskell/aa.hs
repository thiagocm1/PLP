mult :: Int -> Int -> Int

mult x 1 = x

mult 1 y = y

mult x y = x + (mult (x-1) y)