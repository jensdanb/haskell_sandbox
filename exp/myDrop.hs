myDrop :: Int -> [a] -> [a]
myDrop n xs = if n <= 0 || null xs
              then xs
              else myDrop (n - 1) (tail xs)


niceDrop :: Int -> [a] -> [a]
niceDrop n xs | n <= 0 = xs 
niceDrop _ []          = []
niceDrop n (_:xs)      = niceDrop (n-1) xs



myLength :: [a] -> Int
myLength xs = countNext xs 0

    where countNext [] i      = i
          countNext (_:rmd) i = countNext rmd (i+1)


lastTwo :: [a] -> [a]
lastTwo xs = if (length xs < 2) 
             then xs
             else myDrop (length xs -2) xs


lastButOne :: [a] -> a
lastButOne xs = if (length xs <= 2) 
                then head xs
                else head (lastTwo xs)


mySecond :: [a] -> Maybe a
mySecond (_:x:_) = Just x
mySecond _       = Nothing


palindrome :: [a] -> [a]
palindrome xs = xs ++ reverse xs


isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = firstHalf xs == reverse (secondHalf xs)
    
    where len = length xs
          firstHalf xs
              | even len = take (len     `div` 2) xs 
              | odd len  = take ((len-1) `div` 2) xs 
          secondHalf xs
              | even len = drop (len     `div` 2) xs  
              | odd len  = drop ((len+1) `div` 2) xs 

