fromhex :: String -> Int
fromhex s = 
    let digitvals = stringToDigitValues s
        myFunc acc el = acc*16 + el
     in foldl myFunc 0 digitvals

letterToDigit :: Char -> Int
letterToDigit c 
    | c `elem` ['a' .. 'f'] = (ord c - ord 'a') + 10
    | c `elem` ['A' .. 'F'] = (ord c - ord 'A') + 10
    | c `elem` ['0' .. '9'] = ord c - ord '0'

stringToDigitValues :: String  -> [Int]
stringToDigitValues chars = map letterToDigit chars
