data W x = Bingo x deriving Show

instance Functor W where
    fmap f (Bingo x) = Bingo (f x)

instance Applicative W where
    (Bingo f) <*> (Bingo x) = Bingo (f x)

instance Monad W where
    return x = Bingo x
    (Bingo x) >>= f = f x
-- A major clothing company sponsors a popular TV show and asked the star of the show to define a function:
-- wrapadd :: Num b => b -> W b -> W b
-- The function should satisfy the following property:
-- wrapadd (Bingo x) (Bingo y) = Bingo (x + y)
-- Additionally, the company requested that the definition make use of the fact that W is a monad. 
-- This definition was intended for use in advertisements on social media for a new series of jackets.

-- Initial Attempt
-- The TV star proposed the following definition:
-- wrapadd (Bingo x) (Bingo y) = do
--     return (x + y)
-- The Issue
-- The clothing company complained that this definition does not use monads in a meaningful way. 
-- The do block is redundant and adds no real value here, as it simply wraps a direct computation (x + y) in a Bingo constructor without leveraging the monadic structure of W.
wrapadd mx my = do
                x <- mx
                y <- my
                return (x + y)

wrapadd' mx my = mx >>= \x ->
                 my >>= \y ->
                 return(x + y)