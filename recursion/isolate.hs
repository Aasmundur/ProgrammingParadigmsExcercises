-- this one is a bit tougher than the last
--Define type
isolate :: Eq a => [a] -> a -> ([a], [a])
--Base case
isolate [] _ = ([],[])
isolate (l:ls) x | l == x =  (l1, l : l2)
                 | otherwise = (l:l1, l2)
            where
                (l1,l2) = isolate ls x