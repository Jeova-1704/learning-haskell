converter :: String -> Int
converter m = read m :: Int

soma :: Int -> Int -> Int
soma x y = x + y

main :: IO ()
main = do
    a <- getLine
    b <- getLine
    putStrLn ("X = " ++ show (soma (converter a) (converter b)))