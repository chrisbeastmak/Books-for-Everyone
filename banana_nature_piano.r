# Read in the data
books <- read.csv("Books.csv")

# Explore data
summary(books)

# Create a new dataframe for our "Books for Everyone"
BooksForEveryone <- subset(books, Select = c('title','description', 'price', 'author'))

# Find the 10 most expensive books
mostExpensive <- head(sort(BooksForEveryone$price, decreasing = TRUE))

# Find books written by female authors
FemaleAuthors <- subset(BooksForEveryone, author == "Female")

# Find books with prices under $20
CheapBooks <- subset(BooksForEveryone, price < 20)

# Find books with all positive reviews
PositiveReviews <- subset(BooksForEveryone, description == "positive")

# Find books with titles starting with the letter 'A'
TitlesBeginningA <- subset(BooksForEveryone, grepl("^A", title))

# Find books written by male authors
MaleAuthors <- subset(BooksForEveryone, author == "Male")

# Find books with prices over $50
ExpensiveBooks <- subset(BooksForEveryone, price > 50)

# Find books with all negative reviews
NegativeReviews <- subset(BooksForEveryone, description == "negative")

# Find books with titles starting with the letter 'Z'
TitlesBeginningZ <- subset(BooksForEveryone, grepl("^Z", title))

# Find a random selection of 10 books
RandomSelection <- BooksForEveryone[sample(nrow(BooksForEveryone), 10),]

# Create a list of books in alphabetical order by title
AlphabeticalOrder <- BooksForEveryone[order(BooksForEveryone$title),]

# Create a list of books in reverse alphabetical order by title
ReverseAlphabetical <- BooksForEveryone[order(BooksForEveryone$title, decreasing = TRUE),]

# Create a list of books in order of price
PriceOrder <- BooksForEveryone[order(BooksForEveryone$price),]

# Create a list of books in reverse order of price
ReversePriceOrder <- BooksForEveryone[order(BooksForEveryone$price, decreasing = TRUE),]

# Create a list of books in order of author
AuthorsOrder <- BooksForEveryone[order(BooksForEveryone$author),]

# Create a list of books in reverse order of author
ReverseAuthorsOrder <- BooksForEveryone[order(BooksForEveryone$author, decreasing = TRUE),]

# Create a list of books with positive reviews in order of price
PositiveReviewsPriceOrder <- PositiveReviews[order(PositiveReviews$price),]

# Create a list of books with negative reviews in order of price
NegativeReviewsPriceOrder <- NegativeReviews[order(NegativeReviews$price),]

# Create a list of books with positive reviews in reverse order of price
PositiveReviewsReversePriceOrder <- PositiveReviews[order(PositiveReviews$price, decreasing = TRUE),]

# Create a list of books with negative reviews in reverse order of price
NegativeReviewsReversePriceOrder <- NegativeReviews[order(NegativeReviews$price, decreasing = TRUE),]

# Create a list of books with positive reviews written by female authors
PositiveFemaleAuthors <- subset(PositiveReviews, author == "Female")

# Create a list of books with negative reviews written by female authors
NegativeFemaleAuthors <- subset(NegativeReviews, author == "Female")

# Create a list of books with positive reviews written by male authors
PositiveMaleAuthors <- subset(PositiveReviews, author == "Male")

# Create a list of books with negative reviews written by male authors
NegativeMaleAuthors <- subset(NegativeReviews, author == "Male")

# Create a list of books with titles beginning with the letter 'A' in order of price
TitlesBeginningAPriceOrder <- TitlesBeginningA[order(TitlesBeginningA$price),]

# Create a list of books with titles beginning with the letter 'Z' in reverse order of price
TitlesBeginningZReversePriceOrder <- TitlesBeginningZ[order(TitlesBeginningZ$price, decreasing = TRUE),]

# Create a list of books with all positive reviews written by female authors in order of price
PositiveFemaleAuthorsPriceOrder <- PositiveFemaleAuthors[order(PositiveFemaleAuthors$price),]

# Create a list of books with all negative reviews written by female authors in reverse order of price
NegativeFemaleAuthorsReversePriceOrder <- NegativeFemaleAuthors[order(NegativeFemaleAuthors$price, decreasing = TRUE),]

# Create a list of books with all positive reviews written by male authors in order of price
PositiveMaleAuthorsPriceOrder <- PositiveMaleAuthors[order(PositiveMaleAuthors$price),]

# Create a list of books with all negative reviews written by male authors in reverse order of price
NegativeMaleAuthorsReversePriceOrder <- NegativeMaleAuthors[order(NegativeMaleAuthors$price, decreasing = TRUE),]