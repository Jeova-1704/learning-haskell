reverseString :: String -> String
reverseString [] = []  -- Caso base: se a string estiver vazia, retorna uma string vazia
reverseString (x:xs) = reverseString xs ++ [x]


main :: IO()
main = do 
    putStrLn "Enter a string: "
    str <- getLine
    putStrLn ("The reverse of the string is: " ++ reverseString str)