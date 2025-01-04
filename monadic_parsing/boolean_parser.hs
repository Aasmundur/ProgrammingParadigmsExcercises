import Parsing

-- t | f | b1 ∨ b2 | b1 ∧ b2 | ¬b1 | (b1)
-- I will make a parser for this grammar:

-- B → T ∧ B | T ∨ B | T
-- T → ¬A | A
-- A → t | f | (B)

boolean = do 
    t <- term
    op <-oper
    b <- boolean
    return (t ++ op ++ b) 
    <|> term

term = do
    string "not"
    a <- atom
    return ("not " ++ a)
    <|>
    atom
atom = string "tt"
    <|> string "ff"
    <|> do
        char '('
        b <- boolean
        char ')'
        return b
oper = string "and" <|> string "or"