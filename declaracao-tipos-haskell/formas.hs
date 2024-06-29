data Forma = Circulo Float | Retangulo Float Float

quadrado :: Float -> Forma
quadrado n = Retangulo n n

area :: Forma -> Float
area (Circulo r) = pi * r ^ 2
area (Retangulo l a) = l * a

main :: IO()
main = do
    print(area (Circulo 2))
    print(area (Retangulo 2 5))
    print(area (quadrado 5))
