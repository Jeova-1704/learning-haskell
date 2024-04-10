-- Escreva uma função em Haskell que calcule o fatorial de um número.

fatorial :: Int -> Int 
fatorial x | x == 0 = 1 
           | otherwise = x * fatorial (x - 1)


fatorial2 :: Int -> Int 
fatorial2 0 = 1
fatorial2 x = x * fatorial2 (x - 1)

main :: IO()
main = do 
    print (fatorial2 4)