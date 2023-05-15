data Cartesian2D = Cartesian2D Double Double
                   deriving (Eq, Show)


data Polar2D = Polar2D Double Double
                   deriving (Eq, Show)


data Roygbiv = Red
             | Orange
             | Yellow
             | Green
             | Blue
             | Indigo
             | Violet
               deriving (Eq, Show)


type Vector = (Double, Double)


data MyShape = Circle Vector Double
             | Poly [Vector]
             deriving (Eq, Show)