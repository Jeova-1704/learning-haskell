qsort :: [Int] -> [Int]
qsort [] = []
qsort (h:t) = qsort [y | y <- t, y < h] ++ [h] ++ qsort [x | x <- t, x >= h]
