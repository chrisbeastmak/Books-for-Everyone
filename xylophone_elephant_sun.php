<?php

// Book Class
class Book 
{
	// Properties
	public $title;
	public $author;
	public $price;
	
	// Methods
	public function __construct($title, $author, $price) {
		$this->title = $title;
		$this->author = $author;
		$this->price = $price;
	}
	
	public function getTitle() {
		return $this->title;
	}
	
	public function getAuthor() {
		return $this->author;
	}
	
	public function getPrice() {
		return $this->price;
	}
}

// Library Class
class Library 
{
	// Properties
	public $books;
	
	// Methods
	public function __construct() {
		$this->books = array();
	}
	
	public function addBook($book) {
		$this->books[] = $book;
	}
	
	public function getBooks() {
		return $this->books;
	}
}

// Create Books
$book1 = new Book("To Kill a Mockingbird", "Harper Lee", 10.99);
$book2 = new Book("The Catcher in the Rye", "J.D. Salinger", 12.99);
$book3 = new Book("The Great Gatsby", "F. Scott Fitzgerald", 14.99);

// Create Library
$library = new Library();

// Add Books
$library->addBook($book1);
$library->addBook($book2);
$library->addBook($book3);

// Get Books
$books = $library->getBooks();

// Display Books
foreach($books as $book) {
	echo $book->getTitle() . " by " . $book->getAuthor() . ": $" . $book->getPrice() . "<br />";
}

?>