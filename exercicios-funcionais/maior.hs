-- encontre o maior elemento de uma lista 

maiorElemento :: [Int] -> Int
maiorElemento [] = error "Lista vazia"
maiorElemento [x] = x
maiorElemento (h:t) | h > restoMaior = h
                    | otherwise = restoMaior
                    where restoMaior = maiorElemento t

maior :: [Int] -> Int
maior x | x == [] = error "Lista vazia"
        | length x == 1 = head x
        | head x > maiorRestante = head x
        | otherwise = maiorRestante
        where maiorRestante = maior (tail x)

main :: IO()
main = do
    let lista = [1, 20, 3, 4, 5, 10]
    print (maior lista)