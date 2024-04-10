qtdchar :: String -> Int
qtdchar [] = 0
qtdchar (h:t) = 1 + qtdchar t

tamanho :: [String] -> Int
tamanho [] = 0
tamanho (h:t) = qtdchar h + tamanho t

main :: IO()
main = do 
    let lista = ["Jeova", "Notebook"]
    print (tamanho lista)
    print (head "jeova")