data UTree a = Node a [UTree a] deriving Show

instance Functor UTree where
    --fmap :: (a -> b) -> UTree a -> UTree b
    fmap g (Node x []) = Node (g x) []
    fmap g (Node x (us)) = Node (g x) (map (fmap g) us)

-- try this ghci> fmap (*20) (Node 1 [Node 2 [Node 4 []], Node 3 []])
