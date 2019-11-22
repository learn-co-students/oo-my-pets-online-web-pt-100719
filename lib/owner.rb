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
end