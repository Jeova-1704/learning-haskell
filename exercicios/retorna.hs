calcular :: Int -> Int -> Int -> Int
calcular a b c
    | a == 0 = b^2 + 3*c 
    | a == 1 = (2 * c^2) - 3*c
    | a == 2 = 3*c - b^2
    | otherwise = 0


main :: IO()
main = do
    print (calcular 4 2 3)