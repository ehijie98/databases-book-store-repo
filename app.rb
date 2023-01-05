require_relative 'lib/database_connection'
require_relative 'lib/book.rb'
require_relative 'lib/book_repository.rb'

DatabaseConnection.connect('book_store')

repo = BookRepository.new
books = repo.all

books.each do |book|
    p  "#{book.id} - #{book.title} - #{book.author_name}"
end

