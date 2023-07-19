#include<stdio.h>
#include<stdlib.h>
#include<string.h>
 
#define MAX_TITLE_SIZE 30
#define MAX_AUTHOR_SIZE 30
#define MAX_GENRE_SIZE 20

struct book {
	char title[MAX_TITLE_SIZE];
	char author[MAX_AUTHOR_SIZE];
	char genre[MAX_GENRE_SIZE];
};

// Function Prototypes
void displayData(struct book *pbook);
void sortByTitle(struct book *pbook);
void sortByAuthor(struct book *pbook);
void sortByGenre(struct book *pbook);
void inputData(struct book *pbook);
void deleteBook(struct book *pbook);

int main(){
	
	struct book book1;
	
	inputData(&book1);
	
	sortByTitle(&book1);
	sortByAuthor(&book1);
	sortByGenre(&book1);
	
	displayData(&book1);
	
	deleteBook(&book1);
	
	return 0;
}

// Function definitions

void displayData(struct book *pbook){
	printf("\nBook Details\n");
	
	printf("\nTitle: %s", pbook->title);
	printf("\nAuthor: %s", pbook->author);
	printf("\nGenre: %s\n\n", pbook->genre);
}

void sortByTitle(struct book *pbook){
	char temp[MAX_TITLE_SIZE];
	
	strcpy(temp, pbook->title);
	
	for(int i = 0; i < MAX_TITLE_SIZE; i++){
		if(temp[i] < pbook->title[i]){
			strcpy(pbook->title, temp);
		}
	}
	
}

void sortByAuthor(struct book *pbook){
	char temp[MAX_AUTHOR_SIZE];
	
	strcpy(temp, pbook->author);
	
	for(int i = 0; i < MAX_AUTHOR_SIZE; i++){
		if(temp[i] < pbook->author[i]){
			strcpy(pbook->author, temp);
		}
	}
	
}

void sortByGenre(struct book *pbook){
	char temp[MAX_GENRE_SIZE];
	
	strcpy(temp, pbook->genre);
	
	for(int i = 0; i < MAX_GENRE_SIZE; i++){
		if(temp[i] < pbook->genre[i]){
			strcpy(pbook->genre, temp);
		}
	}
	
}

void inputData(struct book *pbook){
	printf("\nEnter Book Details:\n");
	
	printf("\nTitle: ");
	gets(pbook->title);
	
	printf("\nAutor: ");
	gets(pbook->author);
	
	printf("\nGenre: ");
	gets(pbook->genre);
	
	printf("\nBook Details Saved!\n\n");
}

void deleteBook(struct book *pbook){
	free(pbook);
	printf("\nBook Details Deleted\n\n");
}