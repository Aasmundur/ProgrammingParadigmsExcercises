descending :: (Ord a) => [a] -> Bool
--at first i included for empty list: descending [] = True, not needed imo
--Another thing, i tried using Eq a, because i wanted to check equality i thought
--however it was Ord a i needed for checking leq. 
descending [_] = True
descending (x:y:xs) = (x >= y) && descending (y:xs)