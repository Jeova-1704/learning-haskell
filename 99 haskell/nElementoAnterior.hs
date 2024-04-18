{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

kElementoLista :: Int -> [a] -> a
kElementoLista x [] = error "Lista vazia"
kElementoLista k xs = xs !! k 

main :: IO ()
main = do
    let nuns = [1 .. 10]
        chars = ['a' .. 'z']
    print (kElementoLista 2 nuns)
    print (kElementoLista 2 chars)
    print (kElementoLista 2 nuns)
