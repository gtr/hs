contains_q :: String -> Bool
contains_q "" = False
contains_q s = 
    if head s == 'q' then
        True
    else
        contains_q (tail s)