{-
:type comment
	> not False
	True
	> :type not False
	not False :: Bool

Basic types
	Bool, 
	Char, 
	String, 
	Int (fixed-precision), 
	Integer (arbitrary-precision), 
	Float

List (same type)
	[False, True]
	[['a'], ['b','c']]

Tuple (different types)
	(False, True)
	(False, 'a', True)
	(True, ['a', 'b'])

Function Types
	> :type not
	not	:: Bool -> Bool
-}

-- functions on tuples
myAdd :: (Int,Int) -> Int
myAdd (x,y) = x + y

myZeroTo :: Int -> [Int]
myZeroTo n = [0..n]

-- Curried functions: 
-- 	functions that take their arguments one at a time
--  fucntions with > 2 arguments can be curried by returning nested functions
myAdd2 :: Int -> (Int -> Int)
myAdd2 x y = x + y

myMult :: Int -> (Int -> (Int -> Int))
myMult x y z = x*y*z

-- Curried functions are more flexible because useful functions can often be made
-- by partially applying a curried function
-- 	myAdd2 1 :: Int -> Int

-- Polymorphic Functions
-- length	:: [a] -> Int
-- head		:: [a] -> a
-- take		:: Int -> [a] -> [a]
-- zip		:: [a] -> [b] -> [(a,b)]
-- id		:: a -> a

-- Exercises
second xs = head (tail xs)
-- second :: [a] -> a

swap (x,y) = (y,x)
-- swap :: (t1, t) -> (t, t1)

pair x y = (x,y)
-- pair :: t -> t1 -> (t, t1)

double x = x*2
-- double :: Num a => a -> a

palindrome xs = reverse xs == xs
-- palindrome :: Eq a => [a] -> Bool

twice f x = f (f x)
-- twice :: (t -> t) -> t -> t