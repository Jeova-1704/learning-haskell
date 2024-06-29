dropUltimoElemento :: [a] -> [a]
dropUltimoElemento [] = error "Lista vazia"
dropUltimoElemento x =  reverse (tail (reverse x))

main = do
    print (dropUltimoElemento [1,2,3,4,5]) 
    print (dropUltimoElemento [1,2,3]) 
    print (dropUltimoElemento [1]) 