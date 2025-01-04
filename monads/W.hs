-- Here is a piece of Haskell code:

data W x = Bingo x deriving Show

instance Functor W where
    fmap f (Bingo x) = Bingo (f x)

instance Applicative W where
    (Bingo f) <*> (Bingo x) = Bingo (f x)

instance Monad W where
    return x = Bingo x
    (Bingo x) >>= f = f x
-- For this to make sense, a definition of W as an applicative functor is missing. Write such a definition.
-- Apply multiplication to two bingos:
-- Bingo (*) <*> Bingo 2 <*> Bingo 3
--
-- Try with three bingos:
-- ghci> Bingo(*) <*> (Bingo(*) <*> Bingo 2 <*> Bingo 3) <*> Bingo 2 
-- Bingo 12