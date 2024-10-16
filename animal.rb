class Animal
  attr_accessor :type, :name

  def initialize(type, name)
    # initialize type and name of animal using values provided 
    self.type = type
    self.name = name
  end

  def to_s
    # print name and type of animal
    puts "#{self.name} the #{self.type}"
  end
end
