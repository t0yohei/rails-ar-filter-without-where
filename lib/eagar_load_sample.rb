# -- N + 1 --
authors = Author.all
authors.each do |author|
  author.books.each_with_index do |book, index|
    pp "--book_#{index}--", book
  end
end

# -- where 区を使った絞り込み --
authors = Author.all.eager_load(:books).where(books: { book_type: 'magazine' })
authors.each do |author|
  author.books.each_with_index do |book, index|
    pp "--magazine_#{index}--", book
  end
end

authors.each do |author|
  author.books.where(book_type: 'comic').each_with_index do |book, index|
    pp "--comic_#{index}--", book
  end
end

# # -- select 区を使った絞り込み --
authors = Author.all.eager_load(:books)
authors.each do |author|
  magazines = author.books.select{ |book| book.book_type == 'magazine' }
  magazines.each_with_index do |magazine, index|
    pp "--magazine_#{index}--", magazine
  end
end

authors.each do |author|
  comics = author.books.select{ |book| book.book_type == 'comic' }
  comics.each_with_index do |comic, index|
    pp "--comic_#{index}--", comic
  end
end
