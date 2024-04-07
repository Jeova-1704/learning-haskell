inverterLista :: [Int] -> [Int]
inverterLista [] = []
inverterLista (h:t) = inverterLista t ++ [h]



main :: IO()
main = do
    let lista = [1, 2, 3, 4, 5] 
    print (inverterLista lista)
