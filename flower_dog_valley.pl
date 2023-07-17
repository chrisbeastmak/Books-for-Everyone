#!/usr/bin/perl

# Use the 'strict' pragma to ensure that our code adheres to
# modern Perl standards
use strict;

# Use the 'warnings' pragma to enable Perl diagnostics 
use warnings;

# My library of all books
my %library = ();

# List of books
our @books = (
	"The Cat in the Hat",
	"Harry Potter and the Sorcerer's Stone",
	"The Hunger Games",
	"To Kill a Mockingbird",
	"Pride and Prejudice",
	"The Great Gatsby",
	"The Hobbit",
	"The Adventures of Huckleberry Finn"
);

# Loop through each book in the list
for my $book (@books) {

	# Set the title as the key and the available number of 
	# copies as the value
	$library{$book} = 10;
}

# The main loop
print "Welcome to 'Books for Everyone'!\n";

while (1) {
	# Print the list of available books
	print "Here are the books we currently have in stock:\n\n";
	for my $key (keys %library) {
		print "$key (" . $library{$key} . " copies)\n";
	}

	# Ask the user to choose one
	print "\nPlease choose a book from the list: ";
	my $choice = <>;
	chomp($choice);

	# Check whether we have a copy of it
	if ($library{$choice}) {
		print "\nGreat choice! We have $library{$choice} copies of $choice available.\n";

		# Ask the user how many copies they would like
		print "\nHow many copies would you like? ";
		my $copies = <>;
		chomp($copies);

		# Check if we have enough copies
		if ($library{$choice} < $copies) {
			print "\nSorry, we only have $library{$choice} copies of $choice available.\n";
		}
		else {
			# We have enough copies, so update the library
			$library{$choice} -= $copies;
			print "\nThanks! Here are your $copies copies of $choice.\n";
		}
	}
	else {
		# The book was not found
		print "\nSorry, we don't have a copy of $choice available.\n";
	}

	# Ask the user if they would like to continue
	print "\nWould you like to make another selection (y/n)? ";
	my $answer = <>;
	chomp($answer);
	if ($answer eq "n") {
		last;
	}
}

print "\nThanks for stopping by! We hope to see you again soon.\n";