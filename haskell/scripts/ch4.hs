-- List comprehension
[x^2 | x <- [1..5]]

[(x,y) | x <- [1,2,3], y <- [4,5]]

-- x <- [1..5] is called generator
-- later generator can depend on the variables that are introduced by earlier generators
[(x,y) | x <- [1..3], y <- [x..3]]


-- guards: used to restrict the values produed by earlier generators
[x | x <- [1..10], even x]


-- zip function: maps two lists to a list of pairs of their corresponding elements
zip ['a','b','c'] [1,2,3,4]

-- String: a sequence of characters enclosed in double quotes
length "abcde"


