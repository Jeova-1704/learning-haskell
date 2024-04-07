import Text.Printf (printf)
main :: IO ()
main = do 
   employeeNumber <- readLn :: IO Int 
   workedHours <- readLn :: IO Double
   amountPerHour <- readLn :: IO Double

   putStrLn ("NUMBER = " ++ show employeeNumber )
   printf "SALARY = U$ %.2f\n" (workedHours*amountPerHour)