{- Toda função que retrorna ou recebe um função é chamada de função de alta odem -}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}


duasVezes :: (a -> a) -> a -> a
duasVezes f x = f (f x)

quadruplica :: Num a => a -> a
quadruplica = duasVezes (*2) 

map2 :: (a -> b) -> [a] -> [b]
map2 f []    = []
map2 f (x:xs) = f x : map2 f xs


filtro :: (a -> Bool) -> [a] -> [a]
filtro f xs = [x | x <- xs, f x]

somaQuadradosPares :: [Int] -> Int
somaQuadradosPares ns = sum $ map2 (^2) $ filtro even ns


main :: IO()
main = do
    let lista = [1..10]
    print (all even [2, 4, 6, 8])
    print (any odd [2, 4, 6, 8])
    print (takeWhile even [2, 4, 7, 6, 8])
    print (dropWhile even [2, 4, 7, 6, 8])
    