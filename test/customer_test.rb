require 'test/unit'
require_relative '../lib/movie'
require_relative '../lib/rental'
require_relative '../lib/customer'
class CustomerTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @pepe = Customer.new("Pepe")
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_name
    assert_equal 'Pepe', @pepe.name
  end

  def test_statement
    @pepe.add_rental Rental.new(
        Movie.new('El Señor de los Anillos', Movie::REGULAR),
        1
    )
    @pepe.add_rental Rental.new(
        Movie.new('Vengadores 4', Movie::NEW_RELEASE),
        2
    )
    @pepe.add_rental Rental.new(
        Movie.new('Snoopy', Movie::CHILDREN),
        3
    )

    statement = @pepe.statement
    puts statement
    assert_match /Amount owed is 9\.5/, statement
    assert_match /You earned 4 frequent renter points/, statement
    assert_match /Snoopy\s1\.5/, statement
    assert_match /El Señor de los Anillos\s2/, statement
    assert_match /Vengadores 4	\s*6/, statement
  end


end