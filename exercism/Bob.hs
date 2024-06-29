module Bob (responseFor) where

import Data.Char

pergunta :: String -> Bool
pergunta stmt = last (filter (not . isSpace) stmt) == '?'

maisculo :: String -> Bool
maisculo stmt =  any isAlpha stmt && all isUpper (filter isAlpha stmt)


responseFor :: String -> String
responseFor xs
    | all isSpace xs = "Fine. Be that way!"
    | pergunta xs && maisculo xs = "Calm down, I know what I'm doing!"
    | pergunta xs = "Sure"
    | maisculo xs = "Whoa, chill out!"
    | otherwise = "Whatever."
