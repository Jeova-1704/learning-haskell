getUltimoElemento :: [a] -> a
getUltimoElemento [] = error "Lista vazia"
getUltimoElemento x = head (reverse x)

main :: IO()
main = do
    print (getUltimoElemento [1,2,3,4,5]) 
    print (getUltimoElemento [1]) 
    print (getUltimoElemento [1,2,3,4,5,6,7,8,9,10])
