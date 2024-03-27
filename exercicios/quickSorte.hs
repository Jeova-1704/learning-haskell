quickSort [] = []
quickSort (x:xs) = quickSort menores ++ [x] ++ quickSort maiores
    where
         menores = [a | a <- xs, a<=x]
         maiores = [b | b <- xs, b >x]
    
main :: IO ()
main = do
    putStrLn "Testando quickSort:"
    testar "Caso 1" (quickSort [4, 65, 2, -31, 0, 99, 2, 83, 782, 1]) [-31,0,1,2,2,4,65,83,99,782]
    --testar "Caso 2" (quickSort []) []
    testar "Caso 3" (quickSort [1,2,3,4,5]) [1,2,3,4,5]
    testar "Caso 4" (quickSort [5,4,3,2,1]) [1,2,3,4,5]
    testar "Caso 5" (quickSort "hello") "ehllo"

-- Função para testar os resultados

testar :: (Eq a, Show a) => String -> a -> a -> IO ()
testar nome resultado esperado =
    if resultado == esperado
        then putStrLn $ "Teste '" ++ nome ++ "' passou!"
        else putStrLn $ "Teste '" ++ nome ++ "' falhou. Resultado esperado: " ++ show esperado ++ ", resultado obtido: " ++ show resultado