somaQuadrado :: [Int] -> Int
somaQuadrado [] = 0
somaQuadrado(h:t) = (quadrado h) + somaQuadrado t
    where quadrado x = x * x


main :: IO()
main = do 
    let lista = [1, 2, 3, 4, 5]
    print (somaQuadrado lista)

