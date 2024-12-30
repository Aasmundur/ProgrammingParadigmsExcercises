midtover :: [a] -> ([a], [a])
midtover [] = ([],[])
midtover [x] = ([x], [])
midtover xs = (ys, zs)
    where ys = take (length xs `div` 2) xs
          zs = drop (length xs `div` 2) xs

