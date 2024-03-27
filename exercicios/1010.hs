import Text.Printf (printf)

totalPagar :: Double -> Double -> Double -> Double -> Double
totalPagar q1 q2 v1 v2 = q1 * v1 + q2 * v2

main :: IO ()
main = do
    entrada1 <- getLine
    entrada2 <- getLine
    
    let [c1, q1, v1] = map read $ words entrada1 :: [Double]
        [c2, q2, v2] = map read $ words entrada2 :: [Double]

    printf "VALOR A PAGAR: R$ %.2f\n" (totalPagar q1 q2 v1 v2)
