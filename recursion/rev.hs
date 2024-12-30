--Define the type
rev :: [a] -> [a]
--enumerate cases (cant be seen here, just listing the steps from book)
--Defining the simple case
rev [] = []
--Defining other case
rev (x:xs) = rev xs ++ [x]
--Last step "generalize and simplify" - This is already done imo, 
--can both be used for strings and lists of numbers