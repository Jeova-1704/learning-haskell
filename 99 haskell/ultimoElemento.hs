ultimoElemento :: [a] -> a
ultimoElemento [] = error "Lista vazia"
ultimoElemento [x] = x
ultimoElemento (x:xs) = ultimoElemento xs


main :: IO()
main = do
    let nuns = [1 .. 10]
    let chars = ['a' .. 'z']
    print(ultimoElemento nuns)
    print(ultimoElemento chars)
    print(ultimoElemento nuns)
    



