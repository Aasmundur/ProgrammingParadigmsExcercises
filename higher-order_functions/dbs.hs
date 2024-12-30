isDouble :: (Eq a, Num a) => (a, a) -> Bool
isDouble (a, b) = b == 2*a -- predicate to use in filter

dbs :: (Num a, Eq a) => [(a,a)] -> [(a,a)]
dbs = filter isDouble -- could also write dbs xs = filter isDouble xs
