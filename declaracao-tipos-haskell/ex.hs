type String = [Char]
type Pos = (Int, Int)
type Trans = Pos -> Pos

type Par a = (a, a)
somar :: Par Int -> Int
somar (a, b) = a + b

somar1 :: Par Bool -> Bool
somar1 (a, b) = a || b



main :: IO()
main = do
    print (somar (1, 1))
    print (somar1 (True, True))

