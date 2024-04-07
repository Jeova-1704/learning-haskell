main :: IO()
main = do
    let pares = [2*x | x <- [0..10]]
    print pares