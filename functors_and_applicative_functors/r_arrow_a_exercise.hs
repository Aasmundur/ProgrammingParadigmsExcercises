import qualified Prelude
import Prelude hiding (Functor, fmap)

class Functor f where
    fmap :: (a -> b) -> f a -> f b

instance Functor ((->)r) where
    --fmap :: (a -> b) -> f a -> f b from the functor def. becomes:
    --fmap :: (a -> b) -> (r -> a) -> (r -> b)
    fmap f g = f . g
    

