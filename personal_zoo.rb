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
    puts "Your job is to add unique types of animals and we'll handle adding their same-type companions."
    puts "You're also allowed to name the unique type of animal you add, and we'll be naming its friends."
    puts "Lets begin your zoo management!"

    manage
  end

  def manage
    loop do
      # Display options for user's personal zoo
      puts ""
      puts "What would you like to do?"
      puts "1. Display animals you added"
      puts "2. Add unique type of animal"
      puts "3. Check in on specific animal(s) you added"
      puts "4. End management (Exit simulation)"
      puts "Choose an option using corresponding number: "

      # get user option
      option = gets.chomp.to_i

      # check user option and call appropriate function
      case option
      when 1
        display
      when 2
        add_animal
      when 3
        animal_check_in
      when 4
        puts "We'll look after your personal zoo. Goodbye!"
        break
      else
        puts ""
        puts "Sorry, that is not one of the available options."
        puts "Please pick another option from the list."
        puts ""
      end
    end
  end

  def display
    # check if animals array is empty and print message to user to inform
    if @animals.empty?
      puts ""
      puts "Looks like no animals have been added."
      puts "You should add a couple!"
    else
      # display each animal in the array
      puts ""
      puts "Here are the animals you added: "
      @animals.each do |animal|
        print "#{animal.to_s}"
      end
    end
  end

  def add_animal
    # ask user for type of animal to add
    puts ""
    puts "What type of animal would you like to add?"
    puts "Enter unique type: "

    # get animal type from user
    new_type = gets.chomp

    # check if type of animal has already been added to zoo
    if @animals.any? { |animal| animal.type == new_type }
      # print message letting user know type already exists and animal is not added
      puts ""
      puts "Looks like there are already too many #{new_type}s. We cannot add another #{new_type}"
    else
      # ask user for name of new animal
      puts ""
      puts "What would you like to name the new #{new_type} we are adding to the zoo?"
      puts "Enter name:"

      # get name from user
      name = gets.chomp

      # create new Animal object and add to animals array with values the user provided
      new_animal = Animal.new(new_type, name)
      @animals.append(new_animal)
    end
  end
end
