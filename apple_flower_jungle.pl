#!/usr/bin/perl
use strict;
use warnings;

# Create a hash to store book details 
my %book_details= ( 
    "title" => "Books for Everyone",
    "author" => "John Smith",
    "publisher" => "XYZ Publishers",
    "price" => "19.95",
    "ISBN" => "1234567890"
);
 
# Open output file "Books_for_Everyone.txt"
open (my $fh, '>', 'Books_for_Everyone.txt') or die "Could not open file 'Books_for_Everyone.txt' $!";

# Print the book details
print $fh "Title: $book_details{'title'}\n";
print $fh "Author: $book_details{'author'}\n";
print $fh "Publisher: $book_details{'publisher'}\n";
print $fh "Price: $book_details{'price'}\n";
print $fh "ISBN: $book_details{'ISBN'}\n";

# Read the input file and print the data to output file
open(my $input, '<', 'Books_for_Everyone.txt') or die "Could not open file 'Books_for_Everyone.txt' $!";
while (my $lines = <$input>) {
    print $fh $lines; 
}

close($fh);

# Print the number of lines in the output file "Books_for_Everyone.txt"
open (my $output, "<", "Books_for_Everyone.txt") or die "Could not open file 'Books_for_Everyone.txt' $!";
my $lines_count = 0;
while (my $lines = <$output>) {
    ++$lines_count;
}
print "Lines in the output file 'Books_for_Everyone.txt' : $lines_count \n";    
close($output);

# Read the data from output file "Books_for_Everyone.txt"
open (my $data, "<", "Books_for_Everyone.txt") or die "Could not open file 'Books_for_Everyone.txt' $!";
while (my $line = <$data>) {
    print $line;
}
close($data);