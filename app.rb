class App
  attr_accessor :books, :people

  def initialize
    @books = []
    @book = nil
    @people = []
    @person = nil
    @rentals = []
  end

  def all_books
    books
  end

  def all_people
    people
  end

  def add_person(person)
    @people << person unless @people.include?(person)
  end

  def add_book(book)
    @books << book unless @books.include?(book)
  end

  def add_rental(rental)
    @rentals << rental unless @rentals.include?(rental)
  end

  def rental_by_id(person_id)
    @rentals.select { |rental| rental.person.id == person_id }
      .map { |rental| print "Date: #{rental.date} Book: #{rental.book.title} by #{rental.book.author}" }
  end
end
