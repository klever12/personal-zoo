class Animal
  attr_accessor :species, :name

  def initialize(species, name)
    # initialize species and name of animal using values provided 
    self.species = species
    self.name = name
  end

  def to_s
    # print name and species of animal
    puts "#{self.name} the #{self.species}"
  end
end
