{-Leia 5 valores Inteiros. A seguir mostre quantos valores digitados foram pares, quantos valores digitados foram ímpares, quantos valores digitados foram positivos e quantos valores digitados foram negativos.

Entrada
O arquivo de entrada contém 5 valores inteiros quaisquer.

Saída
Imprima a mensagem conforme o exemplo fornecido, uma mensagem por linha, não esquecendo o final de linha após cada uma.-}





main :: IO()
main = do
    input <- sequence [readLn :: IO Int | _ <- [1..5]]
    
    let pares = length (filter even input)
        impares = length (filter odd input)
        positivos = length (filter (>0) input)
        negativos = length (filter (<0) input)
    
    putStrLn (show pares ++ " valor(es) par(es)")
    putStrLn (show impares ++ " valor(es) impar(es)")
    putStrLn (show positivos ++ " valor(es) positivo(s)")
    putStrLn (show negativos ++ " valor(es) negativo(s)")