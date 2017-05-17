-- conditional expressions
myAbs :: Int->Int
myAbs n = if n>=0 then n else -n

-- nested conditional expressions
-- conditional expressions mush always have an else branch
mySignum :: Int->Int
mySignum n = if n<0 then -1 else
                if n==0 then 0 else 1

-- guraded equations
-- otherwise is defined = True
myAbs2 n | n >= 0       = n
         | otherwise    = -n 

-- pattern matching
-- 1. underscore symbol _ is a wildcard pattern that matches any argument value
-- 2. patterns are matched in order
-- 3. patterns may not repeat variables (conflicts)
{-
    True && True = True
    _    && _    = False

    True    && b = b
    False   && _ = False
-}

-- list patterns
-- operator (:) called 'cons' adds an element tot the start of a list
{-
    [1,2,3,4] <==> 1:(2:(3:(4:[])))

    head :: [a] -> a
    head (x:_) = x

    tail :: [a] -> [a]
    tail (_:xs) = xs
-}


-- lambda expressions
-- 1. used to avoid naming functions that are only referenced once
-- 2. symbol lambda is typed at the keyboard as a backslash \
{-
    odds n = map f [0..n-1]
             where
                f x = x*2 + 1
-}
odds n = map (\x -> x*2 + 1) [0..n-1]

-- sections
-- 1. if + is an operator then functions of the form (+), (x+) and (+y) are called sections
-- 2. construct simple useful functions
{-
    (1+) successor function
    (1/) reciprocation function
    (*2) doubling fucntion
    (/2) halving function
-}


-- exercises
-- safeTail1 :: [a]->[a]
safeTail1 ns = if null ns then [] else tail ns

safeTail2 ns | null ns      = []
             | otherwise    = tail ns

safeTail3 [] = []
safeTail3 ns = tail ns