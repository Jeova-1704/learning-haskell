dividir :: IO()
dividir = do
    entrada <- getLine
    let [a, b] = map read (words entrada) :: [Double]
    if b == 0 then putStrLn "divisao impossivel"
    else print (a / b)



contador :: Int -> IO()
contador c
    | c == 0 = return ()
    | otherwise = dividir >> contador (c - 1)




main :: IO ()
main = do
    quantidade <- readLn :: IO Int
    contador quantidade
