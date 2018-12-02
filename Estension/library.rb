class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  # def book_details(name)
  #   for book in books
  #     if name == @library[0][:name]
  #       return @library[0][:rental_details]
  #     end
  #   end
  # end

  def add_book(book)
    @books << book
  end 



end
