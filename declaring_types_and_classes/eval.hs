data Aexp = N Int | X String | Add Aexp Aexp | Mul Aexp Aexp

ass :: String -> [(String, Int)] -> Int
ass _ [] = 0
ass var ((varName, x):assignments) | var == varName = x
                     | otherwise = ass var assignments

eval :: Aexp -> [(String, Int)] ->  Int
eval (N n) _ =  n
eval (X var) assList = ass var assList
eval (Add exp1 exp2) assList = eval exp1 assList + eval exp2 assList
eval (Mul exp1 exp2) assList = eval exp1 assList * eval exp2 assList