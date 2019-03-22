cylinder :: Double -> Double -> Double
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^2
  in sideArea + 2 * topArea

calcBmis' :: [(Double, Double)] -> [Double]
calcBmis' xs = [bmi w h| (w,h)<-xs, let bmi weight height = weight / height ^2]
-- calcBmis' xs = [bmi | (w,h)<-xs, let bmi = w / h ^2]
