main :: IO ()
main = do
    let pares = [x | x <- [1..10], even x]
    print pares
