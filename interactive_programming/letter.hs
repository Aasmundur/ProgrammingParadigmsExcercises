--with recursion
letter :: IO ()
letter = do 
    putStr "Enter some letters: "
    inputStr <- getLine
    processString inputStr where
        processString :: String -> IO()
        processString [] = return ()
        processString (x:xs) = do 
            putStrLn [x]
            processString xs

--Without recursion            
letter' :: IO ()
letter' = do 
            putStr "Enter some letters: "
            inputStr <- getLine
            mapM_ putStrLn [[x] | x <- inputStr]
               
--With sequence_
letter'' :: IO()
letter'' = do
    putStr "Enter some letters: "
    inputStr <- getLine
    sequence_ [putStrLn [x] | x <- inputStr]
