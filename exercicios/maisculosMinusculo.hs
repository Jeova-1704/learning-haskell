import Data.Char

verifica :: Char -> String
verifica x
    | isUpper x = "Maisuculo"
    | otherwise = "Minusculo"

charcase :: Char -> String
charcase ch | ch >= 'A' && ch <= 'Z' = "Maiusculo"
            | ch >= 'a' && ch <= 'z' = "Minusculo"
            | otherwise = "Desconhecido"

charcase2 :: Char -> String
charcase2 ch | isAsciiUpper ch = "Maiusculo"
            | isAsciiLower ch = "Minusculo"
            | otherwise = "Desconhecido"

main :: IO()
main = do
    print (verifica 'A')
    print (verifica 'a')