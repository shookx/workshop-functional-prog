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
buildExprList [] [] = Value 0
buildExprList (x:xs) [] = error "Not enough values for operators"
buildExprList [] (y:ys) = error "Not enough operators for values"
buildExprList (x:xs) (y:ys) = buildExpr y x (buildExprList xs ys)

buildAST :: ([String], [String]) -> ASTree
buildAST (ops, vals) = buildExprList ops (mapValues vals)