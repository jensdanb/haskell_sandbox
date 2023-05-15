lend :: Int -> Int -> Maybe Int
lend amount balance = if balance < reserve
                         then Nothing
                         else Just newBalance
                      
                   where reserve = 100
                         newBalance = balance - amount


-- lend3 :: Int -> Int -> Maybe Int
lend3 amount balance
    | amount <= 0            = Nothing
    | amount > reserve * 0.5 = Nothing
    | otherwise              = Just newBalance
   where reserve = 100
         newBalance = balance - amount


foo :: Int
foo = let a = 1
      in let b = 2
         in a + b


bar :: (String, Int)
bar = let x = 1
      in ((let x = "foo" in x), x)


quux :: t -> String
quux a = let a = "foo"
         in a ++ "eek!"


pluralise :: String -> [Int] -> [String]
pluralise word counts = map plural counts 
                  
    where plural 0 = "no " ++ word ++ "s"
          plural 1 = "one " ++ word
          plural n = show n ++ " " ++ word ++ "s"


myMean :: Fractional a => [a] -> a
myMean xs = sum xs / fromIntegral (length xs)
