import os
import time

#Setting the directory
file_dir = "Books_for_Everyone"
os.chdir(file_dir)

#Creating the folders
user_input = input("Enter a category name: ")
os.mkdir(user_input)

#Moving into the new folder
os.chdir(user_input)

#Creating new files
classic_books_file = open("Classics.txt", "w")
cyber_books_file = open("Cyberpunk.txt", "w")
romance_books_file = open("Romance.txt", "w")

#Writing 2000 lines of code
for lines in range(0, 2000):
    classic_books_file.write("This is a line of code for writing classic books!\n")
    cyber_books_file.write("This is a line of code for writing cyberpunk books!\n")
    romance_books_file.write("This is a line of code for writing romance books!\n")

#Closing the files
classic_books_file.close()
cyber_books_file.close() 
romance_books_file.close()

#Checking the files
print("Classic Books file contents: ") 
classic_books_file = open("Classics.txt", "r")
print(classic_books_file.read())

print("Cyberpunk Books file contents: ") 
cyber_books_file = open("Cyberpunk.txt", "r")
print(cyber_books_file.read())

print("Romance Books file contents: ") 
romance_books_file = open("Romance.txt", "r")
print(romance_books_file.read())

#Success message
print("\nSuccessfully created 2000 lines of code in the 3 files!")
time.sleep(3)