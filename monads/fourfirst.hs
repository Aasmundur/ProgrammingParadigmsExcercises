-- 1. (15 minutes)
-- Two influencers were having a heated discussion about the List monad. Influencer 1 presented a
-- new function called fourfirst :
-- f o u r f i r s t xs = do
-- x <− xs
-- r e t u r n ( 4 , x )
-- My guess to what is happening here = Every return (4,x) is being applied to every element in the list, and added to a list
-- So what i think happens is that fourfirst [1,2,3] gives us [(4,1), (4,2), (4,3)] I hope i am right. Lets see:

fourfirst xs = do
                x <- xs
                return (4,x)

-- ghci> fourfirst [1,2,3]
-- [(4,1),(4,2),(4,3)]
-- I was right, light weight baby