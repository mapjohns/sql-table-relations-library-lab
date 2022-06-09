def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT b.title, b.year FROM books b WHERE series_id = 1 ORDER BY 2 ASC"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT r1.name, r1.motto FROM (SELECT c.name, c.motto, LENGTH(c.motto) as ml FROM characters c GROUP BY 1, 2) r1 ORDER BY r1.ml DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(*) FROM characters GROUP BY species ORDER BY 2 DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT a.name, sg.name FROM authors a INNER JOIN series s ON a.id = s.author_id INNER JOIN subgenres sg ON s.subgenre_id = sg.id"
end

def select_series_title_with_most_human_characters
  " SELECT r2.title
    FROM
  (SELECT s.title, COUNT(*) as total FROM series s 
  INNER JOIN authors a ON s.author_id = a.id 
  INNER JOIN (SELECT species, author_id FROM characters WHERE species = 'human') r1 ON r1.author_id = a.id
  ORDER BY 2 DESC
  LIMIT 1) r2"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT c.name, COUNT(*)
  FROM characters c 
  INNER JOIN character_books cb ON c.id = cb.character_id
  INNER JOIN books b ON cb.book_id = b.id
  GROUP BY 1
  ORDER BY 2 DESC, 1 ASC"
end
