module OtherLib where

otherFunc :: String -> Int
otherFunc str = length str

double :: Int -> Int
double int = int + int 

quadruple :: Int -> Int
quadruple x = double( double x )

geoMean :: Floating a => a -> a -> a
geoMean x  y = x * (sqrt (y / x))