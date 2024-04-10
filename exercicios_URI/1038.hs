import Text.Printf (printf)

totalConta :: Double -> Double -> Double
totalConta c q = valor * q
    where valor | c == 1 = 4.00
                | c == 2 = 4.50
                | c == 3 = 5.00
                | c == 4 = 2.00
                | c == 5 = 1.50

main :: IO()
main = do
    line <- getLine
    let [c, q] = map read (words line) :: [Double]
    printf "Total: R$ %.2f\n" (totalConta c q)