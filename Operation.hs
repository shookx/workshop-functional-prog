module Operation where

addition :: Int -> Int -> Int
addition x y = x + y

subtraction :: Int -> Int -> Int
subtraction x y = x - y

multiply :: Int -> Int -> Int
multiply x y = x * y

divide :: Int -> Int -> Maybe Int
divide x y = if y == 0 then Nothing else Just (x `div` y)

