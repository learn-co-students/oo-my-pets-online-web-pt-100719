class Owner

  attr_reader :name, :species # Owner cannot change its name or species
  @@owner = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@owner << self # Stores new instances of the Owner class here
  end

  # Says what species the instance of owner is
  def say_species
    "I am a #{species}." #=> "I am a human."
  end

  # Return all instances of the Owner class
  def self.all
    @@owner
  end

  # Counts and returns the number of Owner instances
  def self.count
    @@owner.length
  end

  # Clears all instances of the Owner class
  def self.reset_all
    @@owner.clear
  end

  def cats
  end

end
