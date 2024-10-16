require "minitest/autorun"
require "./animal.rb"

class TestAnimal < Minitest::Test
  def test_to_s
      new_animal = Animal.new("monkey", "George")
      assert_equal "George the monkey", new_animal.to_s, "to_s test method failed"
  end
end
