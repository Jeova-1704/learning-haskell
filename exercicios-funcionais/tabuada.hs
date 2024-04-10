tabuada :: Int -> Int -> IO ()
tabuada x c | c == 11 = return ()
            | otherwise = do
                putStrLn (show x ++ " * " ++ show c ++ " = " ++ show (x * c))
                tabuada x (c + 1)

main :: IO ()
main = do
    x <- readLn :: IO Int
    tabuada x 1