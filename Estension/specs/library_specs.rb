require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  @library = [{
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
  }]


  def test_get_book()
    library = Library.new(@library)
    p library.library
    assert_equal("lord_of_the_rings", library.library[0][:title])
  end




end
