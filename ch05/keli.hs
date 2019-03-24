multThree :: Int -> Int -> Int -> Int
multThree x y z  = x * y * z

-- (/10) (`take` "123")
-- 截断是个可以中缀表示，也可以截断前面的

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- zipWith
zipWith' :: (a -> b -> c) -> [a] -> [b] ->[c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith f xs ys

-- flip' :: (a -> b ->c) -> (b -> a -> c)
-- flip' f = g
  -- where g x y = f y x
flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x:xs)
  | f x = x : filter' f xs
  | otherwise = filter' f xs

quicksort' :: (Ord a) => [a] -> [a]
quicksort' [] = []
quicksort' (x:xs) =
  let smallerOrEqual = filter (<=x) xs
      greater = filter(>x) xs
  in quicksort' smallerOrEqual ++ [x] ++ quicksort' greater

chain :: Integer -> [Integer]
chain 1 = [1]
chain n
  | odd n = n:chain (n*3+1)
  | even n = n:chain (n `div` 2)

numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
  where isLong xs = length xs > 15
