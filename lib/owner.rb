require 'pry'
class Owner
  attr_accessor :pets 
  attr_reader :name, :species
  
  @@all = []
  

  def initialize(name)
    @name = name
    #@species = species
    @@all << self
  end 
  
  def species(species = "human")
    @species = species
  end
  
  def say_species
     "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats 
    owners_cats = []
    Cat.all.collect do 
      |cat| if cat.owner == self
      owners_cats << cat
      end
    end
    owners_cats
  end
  
  def dogs 
    owners_dogs = []
    Dog.all.collect do 
      |dog| if dog.owner == self
      owners_dogs << dog
      end
    end
   
    owners_dogs
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self, mood = "nervous")
  end
    
  def buy_dog(name)
    dog = Dog.new(name, self, mood = "nervous")
  end
  
  def walk_dogs
    self.dogs.each do |dog| 
      dog.mood= "happy"
    end
  end 
  
  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    all_pets = []
    Dog.all.collect do |dog|
      if dog.owner == self
        all_pets << dog
      end
    end
    Cat.all.collect do |cat|
      if cat.owner == self
        all_pets << cat 
      end
    end
    all_pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end
    
  def list_pets
    dog = self.dogs.length
    cat = self.cats.length
    "I have #{dog} dog(s), and #{cat} cat(s)."
  end
  
  
  
end