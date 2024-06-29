type Assoc k v = [(k, v)]

buscar :: (Eq a, Eq b) => a -> Assoc a b -> [b]
buscar k xs
    | xs == [] = []
    | k == fst (head xs) = snd (head xs) : buscar k (tail xs)
    | otherwise = buscar k (tail xs)


main :: IO()
main = do
    print(buscar 2 [(1, 3), (2, 5), (2, 7), (4, 9)])


