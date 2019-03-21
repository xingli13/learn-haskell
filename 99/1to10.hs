-- Question 1
-- other func
myLast :: [a] -> a
myLast xs = last xs

-- index
myLast' :: [a] -> a
myLast' [] = error "empty list"
myLast' xs = xs !! (length xs - 1)

-- R
myLast'' :: [a] -> a
myLast'' [] = error "empty list"
myLast'' (x:[]) = x
myLast'' (_:xs) = myLast'' xs


myLast''' xs = head (reverse xs)

