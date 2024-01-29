isAlpha :: Char -> Bool
isAlpha c = c `elem` ['a'..'z'] || c `elem` ['A'..'Z']

isDigit :: Char -> Bool
isDigit c = c `elem` ['0'..'9']

isOperator :: String -> Bool
isOperator s = s `elem` ["+", "-", "*", "/", "^"]

isNum :: String -> Bool
isNum s = all isDigit s

filterArr :: (a -> Bool) -> [a] -> [a]
filterArr f [] = []
filterArr f (x:xs) = if f x then x : filterArr f xs else filterArr f xs

parseLine :: [String] -> ([String], [String])
parseLine [] = ([], [])
parseLine (x:xs) = if isOperator x == True
    then (x : fst (parseLine xs), snd (parseLine xs))
    else if isNum x == True
    then (fst (parseLine xs), x : snd (parseLine xs))
    else ([], [])
