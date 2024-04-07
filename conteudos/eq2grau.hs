eq2grau :: Int -> Int -> Int -> Int
eq2grau a b c 
        | delta > 0 = 2
        | delta == 0 = 1
        | otherwise = 0
    where
        delta = (b * b) - (4 * a * c)

main :: IO()
main = do
    print (eq2grau 1 (-5) 6)