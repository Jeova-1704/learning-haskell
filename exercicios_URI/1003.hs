
main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    putStrLn ("PROD = " ++ show(a + b))