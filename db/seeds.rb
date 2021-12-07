author_one = Author.find_or_create_by!(name: 'author_one')
author_two = Author.find_or_create_by!(name: 'author_two')

book_one = Book.find_or_create_by!(name: 'book_one', author_id: author_one.id, book_type: 'magazine')
book_two = Book.find_or_create_by!(name: 'book_two', author_id: author_one.id, book_type: 'comic')
book_three = Book.find_or_create_by!(name: 'book_three', author_id: author_two.id, book_type: 'magazine')
book_four = Book.find_or_create_by!(name: 'book_four', author_id: author_two.id, book_type: 'comic')
