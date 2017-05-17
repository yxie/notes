import Data.Char

-- list comprehension, guard
myConcat xss = [x | xs <- xss, x <- xs]

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n]

primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]

-- zip
pairs xs = zip xs (tail xs)

sorted xs = and [x <= y | (x,y) <- pairs xs]

positions x xs = [i | (x',i) <- zip xs [0..n], x == x']
                where n = length xs - 1

lowers :: String -> Int
lowers xs = length [x | x <- xs, isLower x]

-- exercises
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (init (factors x)) == x]

scalarProduct :: [Int] -> [Int] -> Int
scalarProduct xs ys = sum [x*y | (x,y) <- zip xs ys] 