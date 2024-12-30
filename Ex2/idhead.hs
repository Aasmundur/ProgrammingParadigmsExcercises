--  Define a function idhead that will tell us if a list of pairs begins with a pair whose
-- first and second components are identical.
-- We would like idhead [(42,42) ,(3,4) ,(484000,5) ] to give us True but would like idhead [(”plip”,”
-- mango”),(”dingo”,”kpst”)] to give us False.
-- In your definition you are not allowed to use head or if-then-else-expressions! Is the function
-- polymorphic? If so, in what way?

idhead :: Eq a => [(a, a)] -> Bool
idhead [] = False
idhead ((x,y):xs) | x == y = True
                  | otherwise = False