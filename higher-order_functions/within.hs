within :: (Ord a, Num a) => [a] -> (a,a) -> [a]
within [] _ = []
within xs (low, high) = filter (\x -> (x>=low) && (x<=high)) xs