mymax :: [Int] -> Int
mymax [] = error "You must give me a value"
mymax xs = foldl1 (\acc val -> if acc > val then acc else val)  xs