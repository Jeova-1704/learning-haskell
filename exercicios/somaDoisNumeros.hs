soma :: Int -> Int -> Int
soma x y = x + y

main :: IO ()
main = do
    putStrLn "TESTANDO SOMA DOS NUMEROS:"
    putStrLn $ "soma 5 + 1 = " ++ show (soma 5 1)