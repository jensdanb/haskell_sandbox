module OtherLib where

otherFunc :: String -> Int
otherFunc str = length str

double :: Int -> Int
double int = int + int 

quadruple :: Int -> Int
quadruple x = double( double x )