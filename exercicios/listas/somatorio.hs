somatorio :: [Int] -> Int
somatorio lista
    | null lista = 0
    | otherwise = head lista + somatorio (tail lista)

main :: IO()
main = do
    let lista = [1 .. 4]
    print (somatorio lista)