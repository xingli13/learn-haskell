-- 3.1
lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN"
lucky x = "Sorry, you're out of luck, pal"

sayMe :: Int -> String
sayMe 1 = "ONE!"
sayMe 2 = "TWO!"
sayMe 3 = "THREE!"
sayMe 4 = "FOUR!"
sayMe 5 = "FIVE!"
sayMe x = "Not between 1 and 5"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

-- 3.1.1
addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1+x2, y1+y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

-- 3.1.2
head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "This is empty"
tell [x] = "The list has one element: " ++ show x
tell (x:[y]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

-- 3.1.3 As
firstletter :: String -> String
firstletter "" = "Empty String"
firstletter all@(x:_) = "The first letter of " ++ all ++ " is " ++ [x]
