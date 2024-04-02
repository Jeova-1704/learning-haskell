main :: IO()
main = do
    let lista1 = [1..10] -- todos os numeros de 1 até 10
    let lista2 = [1, 3..10] -- todos os impares de 1 até 10
    let lista3 = [10, 8..1] -- todos os pares de 1 até 10 em ordem decrecente
    let lista4 = 10 : [1, 2] -- add o 10 no começo 

    print lista1
    print lista2
    print lista3
    print lista4
    print (lista2 ++ lista3)
    print (head lista1)
    print (tail lista1)