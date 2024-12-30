-- A Pythagorean triple is a triple (a, b, c) of natural numbers a, b, 
-- and c, such that a ≤ b < c and a^2 + b^2 = c^2. 
-- In other words, a triple of this form gives us the length of the 
-- three sides of a right triangle for which all sides have integer 
-- length. The smallest Pythagorean triple is (3, 4, 5).
-- Use list comprehension to define a function pyt that, when given 
-- an integer k, gives us a list of all
-- Pythagorean triples whose largest element is at most k. 
-- Before you write the definition of pyt, find
-- out what its type should be.

pyt :: (Ord c, Num c, Enum c) => c -> [(c, c, c)]
pyt k | k < 5 = []
      | otherwise = [(a,b,c) | a <- [1 .. k], 
                               b <- [a .. k], 
                               a<=b,
                               c <- [b .. k],
                               c>b, 
                               a^2 + b^2 == c^2]