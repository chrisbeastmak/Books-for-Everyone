'''Books For Everyone

A collection of resources designed to help everyone find the perfect book

# Libraries & Resources
import sys
import os
import json

# Book Categories
novels = []
non_fiction = []
childrens_books = []
audiobooks = []

# Global Variables
highest_rated_book = ''
lowest_rated_book = ''

# Helper Functions
def get_book_info(book_name):
'''Retrieves book information from a file'''
	data = json.load(open('book_info.json'))
	return data[book_name]

def search_books(category):
'''Returns all books in a given category'''
	result = []
	for book_name in category:
		result.append(get_book_info(book_name))
	return result

def find_highest_rated_book():
'''Finds the highest rated book from all books in all categories'''
	global highest_rated_book
	highest_rating = 0
	for book_name in novels + non_fiction + childrens_books + audiobooks:
		book_info = get_book_info(book_name)
		if book_info['rating'] > highest_rating:
			highest_rating = book_info['rating']
			highest_rated_book = book_name
	return highest_rated_book

def find_lowest_rated_book():
'''Finds the lowest rated book from all books in all categories'''
	global lowest_rated_book
	lowest_rating = 5
	for book_name in novels + non_fiction + childrens_books + audiobooks:
		book_info = get_book_info(book_name)
		if book_info['rating'] < lowest_rating:
			lowest_rating = book_info['rating']
			lowest_rated_book = book_name
	return lowest_rated_book

# Main Function
def main():
	'''The main function for Books for Everyone'''
	print('Welcome to Books for Everyone!')
	print('We have a library full of great books for all categories.')
	print('Let us help you find the perfect book to read!')
	print()

	# Get user input
	category = input('What type of book are you looking for?\n')

	# Find books based on category
	if category == 'novels':
		books = search_books(novels)
	elif category == 'non-fiction':
		books = search_books(non_fiction)
	elif category == 'childrens books':
		books = search_books(childrens_books)
	elif category == 'audiobooks':
		books = search_books(audiobooks)
	else:
		print('Invalid category. Please try again.')
		sys.exit()

	# Output book info
	if books:
		for book in books:
			print('----------------------------------------')
			print('Title:', book['title'])
			print('Author:', book['author'])
			print('Rating:', book['rating'])
			print('Description:', book['description'])
			print('----------------------------------------')
	else:
		print('No books found in this category.')

	# Output highest rated book
	highest_rated_book = find_highest_rated_book()
	if highest_rated_book:
		print('The highest rated book in this category is', highest_rated_book)

	# Output lowest rated book
	lowest_rated_book = find_lowest_rated_book()
	if lowest_rated_book:
		print('The lowest rated book in this category is', lowest_rated_book)

if __name__ == '__main__':
	main()