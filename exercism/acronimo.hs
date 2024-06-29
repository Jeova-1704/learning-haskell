import Data.Char

acronym :: String -> String
acronym xs
        | all isUpper xs = [head xs]
        | all isLower xs = [toUpper $ head xs]
        | otherwise      = filter isUpper xs

abbreviate3 :: String -> String
abbreviate3 xs = concatMap (acronym . filter isAlpha) (words $ map (\c -> if c=='-' then ' ' else c) xs)

main :: IO()
main = do
    print (abbreviate3 "As Soon AsPossible")