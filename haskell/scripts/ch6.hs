import Data.Char
-- Higher-order functions: takes a function as an arugument or return a function as a result
-- twice f x = f (f x)

-- map: applies a function to every element of a list
-- map f xs = [f x | x <- xs]
map (+1) [1,3,5,7]

-- filter: selects every element from a list that satisfies a predicate
-- filter p xs = [x | x <- xs, p x]
filter even [1..10]

-- foldr: fold right, encapsulates simple pattern of recursion
-- f [] = v
-- f (x:xs) = x (op) f xs

-- sum = foldr (+) 0
-- product = foldr (*) 1
-- or 		= foldr (||) False
-- and		= foldr (&&) True




-- dot (.): returns the composition of two functions as a single function
-- odd = not . even

-- all: decides if every element of a list satisfies a fiven predicate
-- all p xs = and [p x | x <- xs]

-- any: decides if at least one element of a list satisfies a preicate
-- any p xs = or [p x | x <- xs]
any isSpace "abc def"

-- takeWhile: selects elements from a list while a predicate holds of all the elements
-- takeWhile p (x:xs)
--	| p x = x : takeWhile p xs
--	| otherwise = []
takeWhile isAlpha "abc def"

-- dropWhile: remove elements while a predicate holds of all the elements
dropWhile isSpace "   abc"

-- exercise
-- [f x | x <- xs, p x]
-- map f (filter p x)

-- define map using foldr
-- map f = foldr (\x xs -> xs ++ [f x]) []

-- define filter using foldr
-- filter p = foldr (\x xs -> if p x then xs:x else xs) []