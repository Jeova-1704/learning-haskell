penultimoEl :: [a] -> a
penultimoEl [] = error "Lista vazia"
penultimoEl [x, y] = x
penultimoEl (x:xs) = penultimoEl xs


main :: IO()
main = do
    let nuns = [1 .. 10]
    let chars = ['a' .. 'z']
    print(penultimoEl nuns)
    print(penultimoEl chars)
    print(penultimoEl nuns)
    



