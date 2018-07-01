require 'test/unit'
require_relative '../lib/rental'
require_relative '../lib/movie'
class RentalTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_new
    lotr = Movie.new("El Señor de los Anillos", Movie::REGULAR)
    rental = Rental.new(lotr, 1)

    assert_equal 'El Señor de los Anillos', rental.movie.title
    assert_equal Movie::REGULAR, rental.movie.price_code

  end
end