kth:: [t] -> Int -> t
kth (head: body) index
   |index == 1 = head
   |otherwise = kth body (index - 1)