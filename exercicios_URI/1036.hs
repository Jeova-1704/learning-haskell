import Text.Printf (printf)

main :: IO()
main = do
    entrada <- getLine 
    let [a, b, c] = map read (words entrada) :: [Double]
    let delta = b^2 - 4*a*c
    if delta < 0 || a == 0
        then putStrLn "Impossivel calcular"
        else do
            let r1 = (-b + sqrt delta) / (2*a)
            let r2 = (-b - sqrt delta) / (2*a)
            printf "R1 = %.5f\n" r1
            printf "R2 = %.5f\n" r2