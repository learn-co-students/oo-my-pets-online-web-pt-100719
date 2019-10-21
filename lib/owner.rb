class Owner
  attr_reader :species
  attr_accessor :name, :pets, :dog, :cat
  
  @@all = []
  @@pets ={:dog => [], :cats => []}
  
  def initialize(species)
    @species = species
    @name = name
    @all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@clear.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def pets
    @@pets
  end
  
  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog)
  end
  
  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end
  
  def walk_dogs
    @@pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    @@pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    pets.each do |pet, arr|
      arr.map do |pet|
        pet.mood = "nervous"
      end
      arr.clear
    end
  end
  
end

human = Owner.new("human")
Owner.all
human.buy_cat("fluffy")
human.buy_dog("fido")
human.list_pets





