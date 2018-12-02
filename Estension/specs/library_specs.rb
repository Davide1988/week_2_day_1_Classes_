require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup()
    @books = [{
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    },
      {
        title: "Peter Pan",
        rental_details: {
          student_name: "" ,
          date: ""
        }
      }
  ]

    @new_book = {
      title: "Lord of flies",
      rental_details: {
        student_name: "" ,
        date: ""
      }
    }

      @library = Library.new(@books)
  end

  def test_get_book_details
    book_1 = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
      }
    assert_equal(book_1, @library.books[0])
  end


  def test_get_book()
    assert_equal("lord_of_the_rings", @library.books[0][:title])
  end

  def test_book_details()
    retal_details = {
      student_name: "Jeff",
      date: "01/12/16"
    }
    assert_equal(retal_details, @library.books[0][:rental_details])
  end

  def test_add_book()
   @library.add_book(@new_book)
   assert_equal(3, @library.books.count)
 end






end
