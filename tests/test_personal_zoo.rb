require 'minitest/autorun'
require './personal_zoo.rb'

class TestPersonalZoo < Minitest::Test
  def test_initialization
    new_personal_zoo = PersonalZoo.new
    assert_equal [], new_personal_zoo.animals, "initialization test failed"
  end
end
