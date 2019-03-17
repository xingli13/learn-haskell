{-
1. doubleMe 定义 加上Int -> Int
2. doubleUs 1 2
3. doubleUs 3 4
4. doubleUs x 4
5. doubleUs 4 y
6. doubleUs x y
7. doubleUs xx y
8. doubleMe x
9. doubleMe y
-}
-- doubleMe def func
doubleMe :: Int -> Int
doubleMe x = x * 2

doubleUs :: Int -> Int -> Int
doubleUs 1 2 = 3
doubleUs 3 4 = 3 + 4
--doubleUs 3 yy = 3 + doubleMe yy
doubleUs 3 y = 3 + doubleMe y
doubleUs x 3 = doubleMe x + 3
doubleUs x y = doubleMe x + doubleMe y
