import Text.Printf (printf)


main :: IO ()
main = do 
   r <- readLn :: IO Double
   printf "A=%.4f\n" (3.14159 * r * r)