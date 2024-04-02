comp :: [Int] -> Int
comp lista 
    | null lista = 0
    | otherwise = 1 + comp (tail lista)

main :: IO()
main = do
    print(comp [1, 2, 3, 4, 5])
