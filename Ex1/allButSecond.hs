allButSecond [] = []
allButSecond [x] = [x]
allButSecond (x:xs) = x : tail xs