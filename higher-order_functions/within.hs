within :: (Ord a, Num a) => [a] -> (a,a) -> [a]
within [] _ = []
within xs (low, high) = filter (\x -> (x>=low) && (x<=high)) xs
-- Input: within [1,3,4,5,2] (1,3)
-- Output: [1,3,2]