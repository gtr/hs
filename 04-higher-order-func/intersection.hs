-- CAnt be RECURSIve use HOF (fold, filter, map)

-- -------------
intersection :: Eq => [a] -> [a] -> [a]
intersection xs ys = filter myFunc xs
    where myFunc x = x `elem` ys

-- --------------
intersection :: Eq => [a] -> [a] -> [a]
intersection xs ys = filter (`elem` ys) xs

-- --------------
intersection :: Eq => [a] -> [a] -> [a]
intersection xs ys = filter (\x -> x `elem` ys) xs