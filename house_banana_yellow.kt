import java.io.IOException
import java.util.*

//Declare data structure
data class Book(val title: String, val author: String,val year: Int)

//Create list of books (this is the "database")
val allbooks = listOf(
    Book("Dracula","Bram Stoker", 1897),
    Book("1984","George Orwell", 1949),
    Book("Alice in Wonderland","Lewis Carroll", 1865),
    Book("The Catcher in the Rye","J. D. Salinger", 1951),
    Book("The Great Gatsby","F. Scott Fitzgerald", 1925),
    Book("The Picture of Dorian Gray","Oscar Wilde", 1890)
)

//Get input from user
fun getInput(message: String):String?{
    println(message)
    return try{
        val line = readLine()
        line
    }catch (e: IOException){
        println("Error reading the input")
        null
    }
}

//Find a book based on title
fun findByTitle(title: String): Book?{
    for(book in allbooks){
        if (book.title == title)
            return book
    }
    return null
}

//Find a book based on author
fun findByAuthor(author: String): List<Book>{
    val listOfBooksByAuthor = mutableListOf<Book>()
    for (book in allbooks){
        if (book.author == author)
            listOfBooksByAuthor.add(book)
    }
    return listOfBooksByAuthor
}

//find a book based on year
fun findByYear(year:Int): List<Book>{
    val listOfBooksByYear = mutableListOf<Book>()
    for (book in allbooks){
        if (book.year == year)
            listOfBooksByYear.add(book)
    }
    return listOfBooksByYear
}

//Display found books
fun printBooks(books: List<Book>){
    println("List of books found:")
    var count = 1;
    for(book in books){
        println("${count++}. ${book.title} by ${book.author}, published in ${book.year}")
    }
    println()
}

//main function
fun main(){
    val sc = Scanner(System.`in`)

    while(true){
        println("Welcome to Books for Everyone!\n")
        println("1. Find a book by title")
        println("2. Find books by author")
        println("3. Find books by year")
        println("4. Exit\n")

        val choice = sc.nextInt()

        when (choice) {
            1 -> { 
                val title = getInput("Please enter the title of the book:")
                if(title!=null){
                    val book = findByTitle(title)
                    if(book!=null)
                        println("Book found: ${book.title} by ${book.author}, published in ${book.year}.\n")
                    else
                        println("No such book in the database.")
                }
            }
            2 -> {
                val author = getInput("Please enter the author of the book:")
                if(author!=null){
                    val listOfBooks = findByAuthor(author)
                    if(listOfBooks.isNotEmpty())
                        printBooks(listOfBooks)
                    else
                        println("No books by this author in the database.\n")
                }
            }
            3 -> {
                val year = getInput("Please enter the year of publishing:")
                if(year!=null){
                    val listOfBooks = findByYear(year.toInt())
                    if(listOfBooks.isNotEmpty())
                        printBooks(listOfBooks)
                    else
                        println("No books published in this year in the database.\n")
                }
            }
            4 -> {
                println("Goodbye!")
                break
            }
            else -> println("Invalid input, please try again")
        }
    }
}