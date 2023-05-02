main = interact outPut
    where 
        outPut input = show (sumWordLengths input) 
        sumWordLengths input = sum (allWordLengths input)
        allWordLengths input = map length (wordList input)
        wordList input = words input