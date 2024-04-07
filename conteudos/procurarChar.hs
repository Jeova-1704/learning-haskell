possuichar :: [Char] -> Char -> Bool
possuichar chars char
    | null chars = False
    | char == head chars = True
    | otherwise = possuichar (tail chars) char


main :: IO()
main = do
    let chars = ['a', 'b', 'c', 'd', 'e']
    print (possuichar chars 'a')
    