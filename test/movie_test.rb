require 'test/unit'
require_relative '../lib/movie'
class MovieTest < Test::Unit::TestCase

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
    lotr = Movie.new("El Señor de los Anillos",Movie::REGULAR)
    assert_equal 'El Señor de los Anillos', lotr.title
    assert_equal Movie::REGULAR, lotr.price_code

  end
end