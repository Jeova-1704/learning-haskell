import Data.Char 

number :: String -> Maybe String
number = check . removerCodigo  . filter isDigit -- point-free 
    where
        removerCodigo xs = if head xs == '1' then tail xs else xs

        check phone@[a, _, _, b, _, _, _, _, _, _] 
            | a > '1' && b > '1' = Just phone
        check _ = Nothing
            





 