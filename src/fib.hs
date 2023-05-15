lastTwo :: [a] -> [a]
lastTwo xs = if (length xs < 2) 
             then xs
             else drop (length xs -2) xs


buildFib :: [Integer] -> Int -> [Integer]
buildFib xs n = if (n <= 0) || (length xs < 2) 
                then xs
                else buildFib (xs++[nextFib]) (n-1)
                    where nextFib = sum (lastTwo xs)


-- returns list with n first elements of the fib series.
-- fibonacci 6 == [0, 1, 2, 3, 5, 8]
-- fibonnaci 1 == fibonacci (-1) == [0, 1]
-- avoid n>500 if you want performance, n>5000 if you want stability
fibonacci :: Int -> [Integer]
fibonacci n = if n < 2 
              then [0]
              else buildFib [0, 1] (n-2)