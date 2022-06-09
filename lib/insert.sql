INSERT INTO series (id, title, author_id, subgenre_id) VALUES (1, "Harry Potter", 1, 1), (2, "Spongebob", 2, 2);

INSERT INTO subgenres (id, name) VALUES (1, "Fantasy"), (2, "Comedy");

INSERT INTO authors (id, name) VALUES (1, "J.K. Rowling"), (2, "Stephen Hillenburg");

INSERT INTO books (id, title, year, series_id) VALUES (1, "The Sorcerer's Stone", 1990, 1), (2, "The Prisoner of Azkaban", 1995, 1), (3, "The Goblin of Fire", 2000, 1), (4, "Employee of the month", 2002, 2), (5, "The Nasty Patty", 2004, 2), (6, "Rock a bye bivalve", 2005, 2);

INSERT INTO characters (id, name, species, motto, author_id) VALUES (1, "Harry", "Human", "I am the cursed guy!", 1), (2, "Ron","Human", "It had to be spiders!", 1), (3, "Severus", "Human", "Muddy bloody", 1), (4, "Dumbus", "Human", "You're a human, Harry!", 1), (5, "Spongebob", "sea sponge","I'm ready!", 2), (6, "Patrick","starfish", "So this is the thanks I get for working overtime...", 2), (7, "Mr. Krabs", "crab", "Me money!", 2), (8, "Squidward", "squid", "Robots have taken over the world!....OUR WORLD!", 2);

INSERT INTO character_books (id, character_id, book_id) VALUES (1, 2, 1), (2, 2, 2), (3, 1, 3), (4, 1, 2), (5, 3, 3), (6, 3, 1), (7, 4, 2), (8, 4, 3), (9, 5, 4), (10, 5, 4), (11, 6, 5), (12, 6, 5), (13, 7, 6), (14, 7, 6), (15, 8, 4), (16, 8, 5);
