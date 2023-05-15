type VecComp = Double

type Vec_2DCart  = (VecComp, VecComp)
type Vec_2DPolar = (Double, Double)


data Pos_2D = FromOrigo Vec_2DCart
               | FromPoint Pos_2D Vec_2DCart
                 deriving (Show)


data LinePath2D = AnchoredVector Pos_2D Vec_2DCart
                | Between2D Pos_2D Pos_2D
                | PositionVector Pos_2D
                  deriving (Show)


data Corner = ThreePoints {
                  startPoint :: Pos_2D , 
                  midPoint   :: Pos_2D , 
                  endPoint   :: Pos_2D
                  }
            | TwoLines { 
                  firstLine  :: LinePath2D , 
                  secondLine :: LinePath2D
                  }
              deriving (Show)


data Direction = Direction Vec_2DCart
                 deriving (Show)


cornerAngle :: Corner -> Double
cornerAngle (ThreePoints p1 p2 p3) = -5.0