import Operation

import System.Environment
import System.Exit

readInt :: String -> Int
readInt = read

doop :: [String] -> IO ()
doop (x:y:z:_) = case y of
    "+" -> print $ addition (readInt x) (readInt z)
    "-" -> print $ subtraction (readInt x) (readInt z)
    "*" -> print $ multiply (readInt x) (readInt z)
    "/" -> case divide (readInt x) (readInt z) of
             Just result -> print result
             Nothing -> putStrLn "Division by zero"
    _ -> putStrLn "Invalid operation"
doop _ = putStrLn "Invalid arguments"

main :: IO ()
main = do
    line <- getLine
    let args = words line
    doop args