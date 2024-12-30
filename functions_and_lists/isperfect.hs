-- A perfect number n is a natural number that is the sum of its own divisors 
-- excluding n itself. 28 is a perfect number, since 1 + 2 + 4 + 7 + 14 = 28. 
-- Use list comprehension to define a function isperfect that will 
-- tell us if any given natural number is a perfect number.
--sidekick
isnatural ::  Int -> Bool
isnatural n = n >= 0

-- main protagonist of the show
-- isperfect :: Int -> Bool
isperfect k | not (isnatural k) = False
            | otherwise = k == sum [x | x <- [1 .. k-1],(k `mod` x) == 0]