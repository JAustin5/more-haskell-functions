piece' :: (Ord a, Num a) => a -> a
piece' a
  | a < - 1 = (2 * a) + 1  
  | a > 3 = (- 3 * a) + 7
  | otherwise = - 2 


exp' :: Int -> Int -> Int
exp' x 0 = 1
exp' x y = x * exp' x (y - 1)


compf :: Int -> Int
compf n = n * n


comp' :: [Int] -> Int
comp' = sum . map compf


count :: (Int -> Bool) -> [Int] -> Int
count _ [] = 0
count fn (x:xs)
  | fn x = count fn xs + 1
  | otherwise = count fn xs


itemList :: [Int] -> Int
itemList [] = 0
itemList (x:xs)
  = itemList xs + 1


count'filter :: (Int -> Bool) -> [Int] -> Int
count'filter fn (x:xs)
  = itemList (filter fn (x:xs))


count'lc :: (Int -> Bool) -> [Int] -> Int
count'lc fn (x:xs)
  = itemList ([x | x <- x:xs, fn x])


closure :: [Int] -> Int
closure = count (\x -> x > 10)


powers' :: Int -> [Int]
powers' v = powl [1..] v


powl :: [Int] -> Int -> [Int]
powl (x:xs) v = [v^x | x <- x:xs]


count' :: (Int -> Bool) -> [Int] -> Int
count' _ [] = 0
count' fn (x:xs)
  | f = g + 1
  | otherwise = g
  where 
    g = count' fn xs
    f = fn x
