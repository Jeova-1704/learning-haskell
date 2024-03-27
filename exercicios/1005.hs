import Text.Printf (printf)

media :: Double -> Double -> Double
media a b = (a * x + b * y) / somaPeso
    where 
        x = 3.5
        y = 7.5
        somaPeso = x + y

main :: IO()
main = do
    a <- readLn :: IO Double
    b <- readLn :: IO Double
    printf "MEDIA = %.5f\n" (media a b)