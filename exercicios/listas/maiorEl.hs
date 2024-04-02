maiorEl :: [Int] -> Int
maiorEl lista
    | null lista = -1
    | otherwise = max (head lista) (maiorEl (tail lista))

maiorEl2 :: [Int] -> Int
maiorEl2 [] = -1
maiorEl2 (h:t) = if h >= maiorCauda then h else maiorCauda
    where maiorCauda = maiorEl2 t

main :: IO()
main = do
    let lista = [1, 2, 3, 4, 5]
    print (maiorEl lista)
