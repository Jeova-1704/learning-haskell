import Text.Printf (printf)

diferenca :: Int -> Int -> Int -> Int -> Int
diferenca a b c d = a * b - c * d  

main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    d <- readLn :: IO Int
    putStrLn ("DIFERENCA = " ++ show(diferenca a b c d))