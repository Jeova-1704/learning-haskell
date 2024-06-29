{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}


foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' f v [] = v
foldr' f v (x:xs) = f x (foldr' f v xs)

reverso :: [a] -> [a]
reverso = foldr (\x xs -> xs ++ [x]) []


soma' :: Num a => [a] -> a
soma' = foldl (+) 0

produto' :: Num a => [a] -> a
produto' = foldl (*) 1


main :: IO()
main = do

    print (foldr' (+) 0 [1..10])
    print (foldr' (*) 1 [1..10])
    print (soma' [1..10])
    print (produto' [1..10])

