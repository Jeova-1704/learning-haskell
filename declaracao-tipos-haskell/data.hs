data Movimento = Norte | Sul | Leste | Oeste deriving Show
type Pos = (Int, Int)

mover :: Movimento -> Pos -> Pos
mover Norte (x, y) = (x, y+1)
mover Sul (x, y) = (x, y-1)
mover Leste (x, y) = (x+1, y)
mover Oeste (x, y) = (x-1, y)

movimentos :: [Movimento] -> Pos -> Pos
movimentos [] p = p
movimentos (m:ms) p = movimentos ms(mover m p)

rev :: Movimento -> Movimento
rev Norte = Sul
rev Sul = Norte
rev Leste = Oeste
rev Oeste = Leste

main :: IO()
main = do
    print(mover Norte (1, 2))
    print(mover Sul (1, 2))
    print(mover Leste (1, 2))
    print(mover Oeste (1, 2))
    print()
    print(movimentos [Norte, Norte, Norte, Leste, Sul, Leste, Norte, Oeste] (1, 2))
    print(rev Norte)
