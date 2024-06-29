collatz :: Integer -> Maybe Integer
collatz n
    | n <= 0 = Nothing
    | n == 1 = Just 0
    | even n = fmap (+1) (collatz (n `div` 2))
    | otherwise = fmap (+1) (collatz (3 * n + 1))




main :: IO()
main = do 
    print (collatz 12)
    print (collatz 1)
    print (collatz 0)
    print (collatz 27)
    print (collatz 16)
    print (collatz 1000000)