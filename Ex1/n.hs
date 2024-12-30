-- N = a 'div' length xs
--     where
--         a = 10
--       xs = [1,2,3,4,5]
-- What is wrong with this code?
-- Function name has to start with lower case
-- functions with syntactic sugar such as div needs to be in backticks
-- Indentation error in where clause
n = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]