import Text.Printf (printf)

calcularSalario :: Double -> Double -> Double
calcularSalario salarioF totalV = salarioF + bonus
    where bonus = totalV * 0.15

numero :: String -> Double
numero m = read m :: Double

main :: IO()
main = do
    nome <- getLine
    salarioFixo <- getLine
    totalVendas <- getLine
    printf "TOTAL = R$ %.2f\n" (calcularSalario (numero salarioFixo) (numero totalVendas))