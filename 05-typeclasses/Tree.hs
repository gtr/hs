data Tree a = Node a (Tree a) (Tree a)
            | Leaf
            deriving Show


bstLookup :: Ord a => Tree (a, Int) -> a -> Int
bstLookup Leaf key = 0
bstLookup (Node (curr_key, value) left right) key = 
    if key == curr_key then
        value
    else
        if key < curr_key then
            bstLookup left key
        else
            bstLookup right key