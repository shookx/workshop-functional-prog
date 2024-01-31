module Tree where
data ASTree = Add ASTree ASTree
            | Sub ASTree ASTree
            | Mul ASTree ASTree
            | Div ASTree ASTree
            | Value Int
instance Show ASTree where
    show (Add e1 e2) = show e1 ++ " + " ++ show e2
    show (Sub e1 e2) = show e1 ++ " - " ++ show e2
    show (Mul e1 e2) = show e1 ++ " * " ++ show e2
    show (Div e1 e2) = show e1 ++ " / " ++ show e2
    show (Value n)   = show n

buildExpr :: ASTree -> String -> ASTree -> ASTree
buildExpr e1 op e2 = case op of
    "+" -> Add e1 e2
    "-" -> Sub e1 e2
    "*" -> Mul e1 e2
    "/" -> Div e1 e2

mapValues :: [String] -> [ASTree]
mapValues xs = map (\x -> Value (read x :: Int)) xs

buildExprList :: [String] -> [ASTree] -> ASTree
buildExprList [] (v:[]) = v
buildExprList [] _ = error "Not enough operators for values"
buildExprList (op:ops) (val1:val2:vals) = buildExpr val1 op (buildExprList ops (val2:vals))
buildExprList _ _ = error "Unexpected pattern"

buildAST :: ([String], [String]) -> ASTree
buildAST (ops, vals) = buildExprList ops (mapValues vals)

eval :: ASTree -> Int
eval (Value n) = n
eval (Add e1 e2) = eval e1 + eval e2
eval (Sub e1 e2) = eval e1 - eval e2
eval (Mul e1 e2) = eval e1 * eval e2
eval (Div e1 e2) = eval e1 `div` eval e2