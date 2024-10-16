require "./animal.rb"

class PersonalZoo
  attr_reader :animals

  def initialize
    @animals = []
  end
end
