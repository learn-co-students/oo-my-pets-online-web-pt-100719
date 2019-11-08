class Owner
  # code goes here
  
  attr_reader :species, :name
  attr_accessor :owner, :pets
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @owner = self
    @@all << self
    @pets = []
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  def pets=(pet)
    @pets << pet
  end
  
  def cats
    @pets.each {|pet| pet.class == Cat}
  end
  
  def dogs
    @pets.each {|pet| pet.class == Dog}
  end
  
  def buy_cat(name)
    Cat.new(name,self)
  end
  
  def buy_dog(name)
    Dog.new(name,self)
  end
  
  def walk_dogs
    @pets.each do |pet|
      if pet.class == Dog
        pet.mood = "happy"
      end
    end
  end
  
    def feed_cats
    @pets.each do |pet|
      if pet.class == Cat
        pet.mood = "happy"
      end
    end
  end
  
    def sell_pets
    @pets.each do |pet|
        pet.mood = "nervous"
    end
    @pets.each do |pet|
    pet.owner = nil
    end
    @pets.clear
  end
  
    def list_pets
        "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end
  
  
  
end