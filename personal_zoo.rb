require "./animal.rb"

class PersonalZoo
  attr_reader :animals

  def initialize
    @animals = []
  end

  def welcome
    # welcome messages for user 
    puts ""
    puts "Welcome to your personal zoo!"
    puts "Your job is to add unique animals and we'll handle adding them companions."
    puts "You're also allowed to name the unique animal you add, and we'll be naming its friends."
    puts "Lets begin your zoo management!"

  end
end
