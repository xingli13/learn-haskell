maximum' :: (Ord a) => [a] -> a
maximum' [] = error "no maximum for empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)
