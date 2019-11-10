Repeat an item n times
repeatN :: Int -> a -> [a]
repeatN 0 a = []
repeatN n a = a : repeatN (n - 1) a