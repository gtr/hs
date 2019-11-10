myfirst :: [a] -> Maybe a
myfirst [] = Nothing
myfirst (h:t) = Just h