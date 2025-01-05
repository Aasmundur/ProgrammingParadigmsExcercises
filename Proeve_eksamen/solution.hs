--Name: Åsmundur Alexander Kjærbæk Thorsen
--AAU mail adress: aakt21@student.aau.dk
--Study number: 20195376

-- problem 1.1
rotate :: [a] -> [a]
rotate [] = []
rotate [a] = [a]
rotate (x:xs) = xs++[x]
-- This function is polymorphic as the type of the list does not matter
-- Parametric polymorphism, as it is not contstrained to a class of types

-- problem 1.2
allrotates :: [a] -> [[a]]
allrotates xs = take (length xs) (rotations xs)
            where rotations xs = [rotate xs] ++ rotations (rotate xs)
--Same polymorphism as rotate.
--problem 1.3 
allrotates' :: [a] -> [[a]]
allrotates' [] = [[]]
allrotates'[a] = [[a]]
allrotates' xs = map (\n -> iterate rotate xs !! n) [0..length xs -1]
--Iterate
-- problem 2.1
data Tree a = Leaf a | Node a (Tree a) (Tree a) | NodeUnlabelled (Tree a) (Tree a) deriving Show
-- all nodes also have a label just as the leafs
--Can be repressented as: Node 1 (Node 2 (Leaf 3) (Leaf 4)) (Leaf 5) fully labelled -- NodeUnlabelled (Node 2 (Leaf 3) (Leaf 4)) (Leaf 5)

-- problem 2.2
isfull :: Tree a -> Bool
isfull (Leaf a) = True
isfull (NodeUnlabelled _ _) = False
isfull (Node a t1 t2) = ((isfull t1) && (isfull t2))==True

-- Problem 2.3
preorder :: Tree a -> Maybe [a]
preorder (NodeUnlabelled _ _) = Nothing
preorder (Leaf a) = Just [a]
preorder (Node a t1 t2) = do
                    left <- preorder t1
                    right <- preorder t2
                    return ([a] ++ left ++ right)

-- Problem 3.1
remove :: String -> String -> String
remove s1 s2 = [x | x <- s2, x `notElem` s1]
-- `elemIn is also an option`
--Problem 3.2
remove' :: String -> String -> String
remove' _ [] =  []
remove' s1 (x:xs) | x `elem` s1 = remove' s1 xs
                  | otherwise = x : remove' s1 xs

--Problem 4.1
newtype WrapString a = WS (a,String) deriving Show

instance Functor WrapString where
    fmap f (WS (x,s)) = WS (f x,s)
--my instance declaration
instance Applicative WrapString where 
    pure x= WS (x, "")
    WS (f, s1) <*> WS (x, s2) = WS (f x, s1 ++ s2)
    
-- problem 4.2
instance Monad WrapString where
    return = pure
    (WS (x, s)) >>= f = f x


pairup mw1 mw2 = do
                w1 <- mw1
                w2 <- mw2
                return (w1, w2)
--does not give the right answer
--this does:
pairup' (WS(lval,lstring)) mw2 = do
                w2 <- mw2
                WS((lval, w2), lstring)
-- Problem 5.1

-- Problem 6.1 
