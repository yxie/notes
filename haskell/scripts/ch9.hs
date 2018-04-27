-- type declaration
type Pos = (Int,Int)
origin :: Pos
origin = (0,0)

left :: Pos -> Pos
left (x,y) = (x-1,y)

type Pair a = (a, a)
copy :: a -> Pair a
copy n = (n, n)


-- data declaration
-- type and constructor names must begin with an upper-case letter
data Answer = Yes | No | Unknown deriving (Show)

answers :: [Answer]
answers = [Yes, No, Unknown]

myFlip :: Answer -> Answer
myFlip Yes        = No
myFlip No         = Yes
myFlip Unknown    = Unknown


-- constructor can have parameters
data Shape = Circle Float | Rect Float Float deriving (Show)
square :: Float -> Shape
square n = Rect n n

area :: Shape -> Float
area (Circle r) = pi * r^2
area (Rect x y) = x * y


-- data declarations themselves can also have parameters
data MyMaybe a = MyNothing | MyJust a deriving (Show)
safediv :: Int -> Int -> MyMaybe Int
safediv _ 0 = MyNothing
safediv m n = MyJust (m `div` n)

safehead :: [a] -> MyMaybe a
safehead [] = MyNothing
safehead xs = MyJust (head xs)


-- recursive types
data Nat = Zero | Succ Nat deriving Eq
-- a value of type Nat (natural numbers) is 
-- Zero,
-- Succ Nat
-- Succ (Succ Nat)
-- ...
one   = Succ Zero
two   = Succ one
three = Succ two

nat2int :: Nat -> Int
nat2int Zero = 0
nat2int (Succ n) = 1 + nat2int n
-- 'nat2int one' will output 1

instance Show Nat where
  show n = show (nat2int n)

int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Succ (int2nat (n-1))


-- arithemetic expressions
data Expr = Val Int | Add Expr Expr | Mul Expr Expr deriving (Show)

exprTest = Add (Val 1) (Mul (Val 2) (Val 3))

size :: Expr -> Int
size (Val n)    = 1
size (Add x y)  = size x + size y
size (Mul x y)  = size x + size y

eval :: Expr -> Int
eval (Val n) = n
eval (Add x y) = eval x + eval y
eval (Mul x y) = eval x * eval y


-- binary tree
data Tree = Leaf Int | Node Tree Int Tree deriving (Show)

treeTest = (Node (Node (Leaf 1) 3 (Leaf 4))
           5
           (Node (Leaf 6) 7 (Leaf 9)))

occurs :: Int -> Tree -> Bool
occurs m (Leaf n) = m==n
occurs m (Node l n r) = m == n
                        || occurs m l
                        || occurs m r

flatten :: Tree -> [Int]
flatten (Leaf n) = [n]
flatten (Node l n r) = flatten l ++ [n] ++ flatten r


-- exercises
add_nat :: Nat -> Nat -> Nat
add_nat Zero n = n
add_nat (Succ m) n = Succ (add_nat n m)

mul_nat :: Nat -> Nat -> Nat
mul_nat m Zero = Zero
mul_nat m (Succ n) = add_nat m (mul_nat m n)

sizeTree :: Tree -> Int
sizeTree (Leaf n) = 1
sizeTree (Node l n r) = sizeTree l + 1 + sizeTree r 

complete :: Tree -> Bool
complete (Leaf n) = True
complete (Node l n r) = complete l && complete r && sizeTree l == sizeTree r
