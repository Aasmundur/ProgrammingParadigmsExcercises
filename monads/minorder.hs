-- 5. (30 minutes)
-- Consider trees whose elements are values of some type in the type class Ord. The type Tree a is
-- defined by
-- data Tree a = Le a f a | Node ( Tree a ) ( Tree a )
-- Use a monad to write a function minorder that takes such a tree and checks if the numbers in
-- the structure are in non-decreasing order when read from left to right. If it is, the function should
-- return Just k, where k is the smallest number in the tree, otherwise it should return Nothing. The
-- tree mytree shown in Figure 1 is ordered, so minorder mytree1 should return Just ”aha’’, but the
-- tree in Figure 2 is not ordered, so minorder mytree2 should return Nothing.
-- First define another function minmax that finds the minimal and the maximal element in a tree
-- under the assumption that the tree is ordered. Then use minmax to define minorder.
-- Hints: First, find some good test cases. Then find out which monad you should use.
-- Warning! Only use monadic notation!

data Tree a = Leaf a | Node (Tree a) (Tree a)

minorder (Leaf x) = Just x
minorder (Node t1 t2) = do
    min1 <- minorder t1
    min2 <- minorder t2
    if min1 <= min2
        then Just min1
        else Nothing
validTree = Node (Node (Leaf 1) (Leaf 3)) (Node (Leaf 4) (Leaf 6))
invalidTree = Node (Node (Leaf 5) (Leaf 2)) (Node (Leaf 7) (Leaf 4))