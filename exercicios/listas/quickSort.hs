qsort :: [Int] -> [Int]
qsort [] = []
qsort (h:t) = qsort [y | y <- t, y < h] ++ [h] ++ [x | x <- t, x >= h]
