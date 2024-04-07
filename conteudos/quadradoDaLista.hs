quadrado :: Int -> Int
quadrado x = x * x

cubo :: Int -> Int
cubo x = x * x * x

aoQuadrado :: [Int] -> [Int]
aoQuadrado numeros = map quadrado numeros

aocubo :: [Int] -> [Int]
aocubo cauda = map cubo cauda

main :: IO()
main = do
    let lista = [1, 2, 3, 4, 5]
    let listaAoQuadrado = aoQuadrado lista
    let listaAoCubo = aocubo lista
    print listaAoQuadrado
    print listaAoCubo
