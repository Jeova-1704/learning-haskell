import Text.Printf (printf)

converterStrToDouble :: String -> Double
converterStrToDouble x = read x :: Double

calcularArea :: Double -> Double
calcularArea r = 3.14159 * r * r

main :: IO()
main = do
    r <- getLine
    let raio = converterStrToDouble r
    let area = calcularArea raio
    printf "%.4f" area
