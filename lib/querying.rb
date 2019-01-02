def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year FROM books JOIN series ON Books.series_id = Series.id WHERE Series.id = 1 ORDER BY Books.year ASC"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto FROM characters ORDER BY LENGTH(Characters.motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT Characters.species, COUNT(Characters.species) FROM characters GROUP BY Characters.species ORDER BY COUNT(Characters.species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, SUBGENRES.name FROM authors JOIN series ON Authors.id = Series.author_id JOIN subgenres ON Subgenres.id = Series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title FROM series JOIN characters ON Series.id = Characters.series_id WHERE Characters.species = 'human' GROUP BY Series.title LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(Character_books.book_id) as total_appearances FROM characters JOIN character_books ON Characters.id = Character_books.character_id GROUP BY Characters.name ORDER BY total_appearances DESC"
end
