qsort :: [Int] -> [Int]
qsort [] = []
qsort (h:t) = qsort [y | y <- t, y < h] ++ [h] ++ qsort [x | x <- t, x >= h]

main :: IO()
main = do
    let numeros = [4, 6, 1, 3, 8, 9, 3, 2, 0]
    print (qsort numeros)
