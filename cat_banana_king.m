%Books for Everyone
%This MATLAB code will generate a collection of random books for everyone

% Pre-allocating variables and setting parameters
numBooks = 1000;
authorList = {};
bookTitles = {};

% Creating a loop to generate random books
for i = 1:numBooks
   
    % Generating random information
    authorList{i} = randsample(char(97:122), 8);
    bookTitles{i} = randsample(char(97:122), 10);
    
    % Checking to make sure books are unique
    if i == 1
        bookCheck = 0;
    else
        bookCheck = any(strcmp(bookTitles{i-1}, bookTitles{i}));
    end
    
end

% Outputting the books to the screen
fprintf('Random Book Collection for Everyone:\n')
for j = 1:numBooks
    fprintf('Book %d: %s by %s \n', j, bookTitles{j}, authorList{j})
end