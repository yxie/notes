double x = x + x

quadruple x = double (double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns

exercises2 = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]

myLast ns = ns !! (length ns - 1)

myInit ns = take (length ns - 1) ns

{-
	:load name	load script name
	:reload		reload current script
	:edit name 	edit script name
	:edit		edit current script
	:type expr	show type of expr
	:?			show all comments
	:quit		quit
-}
