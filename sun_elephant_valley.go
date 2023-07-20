// This code will create a software program that will allow users to search 
// for book titles they are interested in and then add them to a virtual 
// library.

package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

// data structure for book titles
type Book struct {
	title 	string
	author 	string
	year 	int
}

// array of book titles
var books []Book

func main() {
	// read in all books from a file
	data, err := ioutil.ReadFile("books.txt")
	if err != nil {
		fmt.Println("Error reading file:", err)
		return
	}
	
	// parse the file and store in the books array
	for _, line := range strings.Split(string(data), "\n") {
		fields := strings.Split(line, ",")
		if len(fields) != 3 {
			continue
		}
		title, author, year := fields[0], field[1], fields[2]
		yearNum, err := strconv.Atoi(year)
		if err != nil {
			continue
		}
		books = append(books, Book{title, author, yearNum})
	}
	
	// setup handlers
	http.HandleFunc("/books", booksHandler)
	http.HandleFunc("/add", addHandler)
	
	// start server
	fmt.Println("Starting server on http://localhost:8080")
	http.ListenAndServe(":8080", nil)
}

// handler for "/books" route
func booksHandler(w http.ResponseWriter, r *http.Request) {
	// print out all book titles in the books array
	for _, book := range books {
		fmt.Fprintf(w, "%s by %s (%d)\n", book.title, book.author, book.year)
	}
}

// handler for "/add" route
func addHandler(w http.ResponseWriter, r *http.Request) {
	// get book title from request
	title := r.URL.Query().Get("title")
	if title == "" {
		fmt.Fprintf(w, "Missing book title\n")
		return
	}
	
	// add book to array
	books = append(books, Book{title, "", 0})
	fmt.Fprintf(w, "Added %s to library\n", title)
}