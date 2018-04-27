primes :: [Int]
primes = seive [2..]

seive :: [Int] -> [Int]
seive (p:xs) = p : seive [x | x <- xs, x `mod` p /= 0]


fibs :: [Int]
fibs = 0 : 1 : [x + y | (x, y) <- zip fibs (tail fibs)]