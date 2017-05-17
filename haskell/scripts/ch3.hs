-- conditional expressions
myAbs :: Int->Int
myAbs n = if n>=0 then n else -n

-- conditional expressions mush always have an else branch
mySignum :: Int->Int
mySignum n = if n<0 then -1 else
                if n==0 then 0 else 1

-- guraded equations
myAbs2 n | n >= 0       = n
         | otherwise    = -n 