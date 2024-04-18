isLeapYear :: Int -> Bool
isLeapYear ano
    | mod ano 400 == 0 = True
    | mod ano 100 == 0 = False
    | mod ano 4 == 0 = True
    | otherwise = False


main :: IO()
main = do
    print (isLeapYear 2020)
    print (isLeapYear 2021)
    print (isLeapYear 2022)
    print (isLeapYear 2023)
    print (isLeapYear 2024)
    print (isLeapYear 2025)
    print (isLeapYear 2026)
    print (isLeapYear 2027)
    print (isLeapYear 2028)
    print (isLeapYear 2029)
    print (isLeapYear 2030)
    