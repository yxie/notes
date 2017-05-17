-- recursive functions
myProduct :: [Int] -> Int
myProduct [] = 1
myProduct (n:ns) = n * myProduct ns

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort (n:ns) = quickSort left ++ [n] ++ quickSort right
                where left = [x | x <- ns, x <= n]
                      right = [y | y <- ns, y > n]

-- exercises
merge :: [Int] -> [Int] -> [Int]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) = if x <= y then 
                        [x] ++ merge xs (y:ys) 
                      else
                        [y] ++ merge (x:xs) ys  

mSort :: [Int] -> [Int]
mSort [] = []
mSort [x] = [x]
mSort xs = merge sorted_left sorted_right
               where sorted_left  = mSort (take (length xs `div` 2) xs)
                     sorted_right = mSort (drop (length xs `div` 2) xs)

