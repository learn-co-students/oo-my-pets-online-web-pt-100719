class Owner

  require 'pry'

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

  def cats #=> john.cat
    Cat.all.select do |cat| #=> Iterates over all cats and finds the ones that belong to John
      cat.owner == self #=> Cat's owner is equal to the instance of Owner
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def pets
    self.cats + self.dogs
  end

  # Adds a new cat to the instance of Owner
  def buy_cat(name) # Passes in the argument of a cat name
    Cat.new(name, self) # Creates an instance of Cat class tied to the current instance of Owner
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.select do |dog|
      dog.mood = 'happy'
    end
  end

  def feed_cats
    Cat.all.select do |cat|
      cat.mood = 'happy'
    end
  end

  def sell_pets
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  # List all the pets for a instance of Owner
  # For example, we look at our owner John
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)." # john.dogs.count / john.cats.count
  end

end
