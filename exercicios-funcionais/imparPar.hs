verificar :: Int -> String
verificar x | x == 0 = "Par"
            | x == 1 = "Impar"
            | otherwise = verificar (abs (x - 2))

main :: IO()
main = do 
    print (verificar 10)
    print (verificar 3)
    print (verificar 1)
