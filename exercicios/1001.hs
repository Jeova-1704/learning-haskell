soma :: Int -> Int -> Int
soma x y = x + y

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn  :: IO Int
    putStrLn ("X = " ++ show (soma a b ))