import qualified Prelude
import Prelude hiding (Applicative, (<*>))
-- instance Applicative [] where
--     -- pure :: a -> [a]
--     pure x = [x]
--     --(<*>) :: [a -> b] -> [a] -> [b]
--     gs <*> xs = [g x | g <- gs , x <- xs]
----That was the standard def of Applicative for lists, but now we need to make this deffinition recursive:
class (Functor f) => Applicative f where
    pure  :: a -> f a
    (<*>) :: f (a -> b) -> f a -> f b


instance Applicative [] where
    -- pure :: a -> [a]
    pure x = [x]
    --(<*>) :: [a -> b] -> [a] -> [b]
    gs <*> [] = []
    gs <*> (x:xs) = (gs <*> [x]) ++ (gs <*> xs) 