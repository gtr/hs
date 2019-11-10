quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let lessThan = quicksort (filter (\n -> n <= x) xs)
        greaterThan = quicksort (filter (\n -> n > x) xs)
     in lessThan ++ [x] ++ greaterThan