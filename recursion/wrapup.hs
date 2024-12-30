
--types
wrapup :: Eq a => [a] -> [[a]]
--base cases
wrapup [] = [[]]
wrapup [x] = [[x]]
--other case
wrapup (x:xs) | x == y = (x:ys):rest
              | otherwise = [x] : wrapup xs
              where ys:rest = wrapup xs
                    y:_ = ys