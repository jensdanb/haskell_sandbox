import Data.List

data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)


simpleTree = Node "parent" (Node "left child" (Node "left left child" Empty Empty) (Node "left right child" Empty Empty))
                           (Node "right child" Empty Empty)



nextLevel :: [Tree a] -> [Tree a]
nextLevel [] = []
nextLevel ((Node x left right):rmd) = [left, right] ++ nextLevel rmd


rmEmpties :: [Tree a] -> [Tree a]
rmEmpties [] = []
rmEmpties (Empty:xs) = rmEmpties xs 
rmEmpties (x:xs)     = x : rmEmpties xs


treeHeight :: Tree a -> Int
treeHeight root = stepper 0 [root]

    where stepper :: Int -> [Tree a] -> Int
          stepper h [] = h
          stepper h ns = stepper (h+1) (rmEmpties (nextLevel ns))


nodesAreSame (Node a _ _ ) (Node b _ _ ) | a == b = Just a
nodesAreSame _             _                      = Nothing


sumList (x:xs) = x + sumList xs
sumList []     = 0

third (a, b, c) = c

complicated (_, a, x:xs, _) = (a, xs)


data List a = Cons a (List a)
            | Nil
              deriving (Show)


fromList :: [a] -> List a
fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil


toList :: List a -> [a]
toList (Cons x rmd) = x : (toList rmd)
toList Nil             = []


lenSort :: [[a]] -> [[a]]
lenSort xs = sortBy (\a b -> compare (length a) (length b)) xs


lenList :: [[a]] -> [Int]
lenList xs = map length xs


joiner :: Char -> String -> String
joiner newChar []         = []
joiner newChar (x:(y:xs)) = x : (newChar : (joiner newChar (y:xs)))
joiner newChar (y:xs)     = singleton y


joiner2 :: a -> [[a]] -> [a]
joiner2 separator []         = []
joiner2 separator (x:(y:xs)) = x ++ (singleton separator) ++ (joiner2 separator (y:xs))
joiner2 separator (y:xs)     = y

