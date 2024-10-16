require "minitest/autorun"
require "./animal.rb"

class TestAnimal < Minitest::Test
  def test_to_s
      new_animal = Animal.new("Monkey", "George")
      assert_equal 
  end
end
