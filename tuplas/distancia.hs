type Ponto = (Float, Float, Float)
distancia :: Ponto -> Ponto -> Float
distancia (x1, y1, z1) (x2, y2, z2) = sqrt(dx^2 + dy^2 + dz^2)
    where dx = x2 - x1
          dy = y2 - y1
          dz = z2 - z1

main :: IO()
main = do
    let p1 = (1, 2, 3)
    let p2 = (4, 5, 6)
    print(distancia p1 p2)
    print(distancia p2 p1)
    print(distancia p1 p1)
    print(distancia p2 p2)
