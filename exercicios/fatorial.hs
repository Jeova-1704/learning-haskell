fatorial :: Int -> Int 
fatorial n
    | n == 0 = 1
    | n > 0 = n * fatorial (n-1)


fatorialCauda :: Int -> Int -> Int
fatorialCauda x acumulado
    | x == 0 = acumulado
    | x > 0 = fatorialCauda (x-1) (x * acumulado)

main :: IO()
main = do
    print (fatorialCauda 5 1)