class Owner
  
  attr_accessor :cats, :dogs
  
  attr_reader :name, :species
  
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    p "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats
    Cat.all.select {|cats| cats.owner == self}
  end
  
  def dogs
    Dog.all.select {|dogs| dogs.owner == self}
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
    self.cats = cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name, self)
    self.dogs = dog
  end
  
  def walk_dogs
    Dog.all.select do |dogs| 
      dogs.owner == self
      dogs.mood = "happy"
    end
  end
  
  def feed_cats
    Cat.all.select do |cats| 
      cats.owner == self
      cats.mood = "happy"
    end
  end
  
  def sell_pets
    Dog.all.select do |dogs| 
      dogs.owner = nil
      dogs.mood = "nervous"
    end
    Cat.all.select do |cats| 
      cats.owner = nil
      cats.mood = "nervous"
    end
  end
  
  def list_pets
    p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
    
end