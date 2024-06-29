toRNA :: String -> Either Char String
toRNA [] = Right []
toRNA (x:xs)
    | x == 'G' = ('C' :) <$> toRNA xs
    | x == 'C' = ('G' :) <$> toRNA xs
    | x == 'T' = ('A' :) <$> toRNA xs
    | x == 'A' = ('U' :) <$> toRNA xs
    | otherwise = Left x



main :: IO()
main = do
    print (toRNA "G")
    print (toRNA "C")
    print (toRNA "T")
    print (toRNA "A")
    print (toRNA "ACGTGGTCTTAA")
    print (toRNA "ACXGTGGTCTTAA")