require 'pry'

class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  @@all = []
  
  def initialize(name, species = "human")
   @name = name
   @species = species
   @@all << self
  #  @cats = cats
  #  @dogs = dogs
  end
  
  def say_species
    return "I am a #{species}."
  end 
  
  def self.all 
    @@all
  end
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all 
    @@all.clear
  end
  
  def cats
    @cats = Cat.all.select { |cat_obj| cat_obj.owner == self }
    @cats 
  end 
  
   def dogs
    @dogs = Dog.all.select { |dog_obj| dog_obj.owner == self }
    @dogs
   end
  
   def buy_cat(name)
    @cats = Cat.new(name, self)
   end
  
  def buy_dog(name)
    @dogs = Dog.new(name, self)
  end

  def walk_dogs     
    dogs.map { |dog| dog.mood = "happy"}
  end

  def feed_cats
    cats.map { |cat| cat.mood = "happy"}
  end

  def sell_pets
      self.dogs.each do |dog| 
        dog.mood = "nervous" 
        dog.owner = nil
      end
      self.cats.each do |cat| 
        cat.mood = "nervous" 
        cat.owner = nil
      end
  end

  def list_pets
    all_dogs = dogs.count
    all_cats = cats.count
    return "I have #{all_dogs} dog(s), and #{all_cats} cat(s)."
  end
  
end