class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :magazine_books, -> { where(book_type: 'magazine') }, class_name: "Book"
end
