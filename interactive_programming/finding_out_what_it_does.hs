-- Here is a program.
-- main = do
-- w <− g e tLi n e
-- l o o p ( ( re ad w) : : I n t )
-- where
-- l o o p 1 = pu tS t r (show 1 )
-- l o o p x = do
-- pu tS t r (show x )
-- i f even x
-- then l o o p ( x ‘ div ‘ 2 )
-- e l s e l o o p ( 3∗ x + 1 )
-- Do not run it! Try to find out what it does
-- I want to say if 1, then it prints 1, thebn it takes the input and prints it, 
-- then depending on if it is even or not, calls the loop function recursively
-- with ( x ‘ div ‘ 2 ) or ( 3∗ x + 1 ). So 123 would give 11211310
main = do
    w <− getLine
    l o o p ( ( read w) :: Int )
    where
        loop1 = putStr (show 1)
        loop x = do
        putStr (show x)
        if even x
            then loop (x ‘ div ‘ 2)
            else loop (3∗x + 1)
