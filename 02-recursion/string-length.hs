stringLength :: [a] -> Int
stringLength []  = 0
stringLength (h:t) = 
    let tailLength = stringLength t
     in 1 + tailLength  


stringLength2 :: [a] -> Int
stringLength2 [] = 0
stringLength2 (h:t) = 1 + (stringLength2 t)


