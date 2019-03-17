{-
1. [1..10] * 2
2. odd x
3. x `mod` 7 == 4
5. 直角三角形
6. removeNonUppercase
7. 过滤列表的列表中所有的奇数
-}
-- [1..10] * 2
list2X = [x * 2 | x <- [1..10]]

-- [1..10] odd x
listOdd =[x | x <- [1..10], odd x]

-- 2 3 5
listNot235 = [ x | x <- [1..20], x `mod` 2 /= 0, x `mod` 3 /= 0, x `mod` 5 /= 0]

-- removeNonUppercase
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase xs = [x | x <- xs, x `elem` ['A'..'Z']]

-- listEvenList
lol = [[1..10],[11..20],[21..30],[31..40]]
listEvenLol = [[x | x <- xs, even x] | xs <- lol]

-- dot
circleDot = [(x, y) | x <- [0..10], y <- [0..10], x*x+y*y==25, x <= y]