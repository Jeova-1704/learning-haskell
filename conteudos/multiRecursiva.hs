multirecursiva :: Int -> Int -> Int
multirecursiva a b
    | b == 1 = a 
    | otherwise = a + multirecursiva a (b-1)

main :: IO()
main = do
    print (multirecursiva 10 7)
