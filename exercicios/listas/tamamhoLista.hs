comp :: [Int] -> Int
comp [] = 0
comp (h:t) = 1 + comp t

main :: IO()
main = do
    print(comp [1, 2, 3, 4, 5])
    