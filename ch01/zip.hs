{-
zip 两个列表
zip 一个列表 无尽列表
-}

-- zip equal list
zipEqual = zip [1,2,3,4] ["first","second","third","fourth"]

-- zip not equal list
zipNotEqual = zip [1,2,3,4] ["1","2","3"]

-- zip str and index
zipStrAndIndex = zip [0..] "hkdfsdfsfer"

-- zip and zip arrays
zipResultAndIndex = zip [0..] zipStrAndIndex
zipFuncResult = zip [0..] (zip [0..] "hkdfsdfsfer")