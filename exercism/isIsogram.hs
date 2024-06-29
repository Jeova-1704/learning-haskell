import Data.Char

isIsogram :: String -> Bool
isIsogram [] = True
isIsogram (x:xs)
    | x == '-' = isIsogram xs
    | x == ' ' = isIsogram xs
    | toUpper x `elem` map toUpper xs = False
    | otherwise = isIsogram xs



main :: IO()
main = do
    print(isIsogram "isogramm")
    