data BookInfo = NewBookInfo Int String [String]
                deriving (Show)


bookID      (NewBookInfo id _     _      ) = id
bookTitle   (NewBookInfo _  title _      ) = title
bookAuthors (NewBookInfo _  _     authors) = authors


data MagazineInfo = NewMagazineInfo Int String [String]
                deriving (Show)


myInfo = NewBookInfo 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]


type CustomerID      = Int
type CustomerName    = String
type CustomerAddress = [String]


data Customer = Customer {
      customerID      :: CustomerID
    , customerName    :: CustomerName 
    , customerAddress :: CustomerAddress 
    } deriving (Show) 


type ReviewBody = String
type BookRecord = (BookInfo, BookReview)


data BookReview = NewBookReview BookInfo CustomerID ReviewBody
                  deriving (Show)


type CardHolder = String
type CardNumber = String
type Address = [String]


data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)