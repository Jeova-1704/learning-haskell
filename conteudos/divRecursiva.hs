divrec :: Int -> Int -> Int
divrec a b 
    | b > a = a
    | b == a = 0
    | otherwise = divrec(a - b) b

main :: IO()
main = do
    print (divrec 15 4)