par :: Int -> Bool
par x
    | even x = True
    | otherwise = False

ispar :: Int -> Bool
ispar x = even x

main :: IO()
main = do
    print (par 4)
    print (ispar 3)
