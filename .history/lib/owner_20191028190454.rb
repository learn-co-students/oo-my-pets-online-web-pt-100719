class Owner
  attr_reader :name, :species
  @@all = []
  @count = 0
  def initialize(name, species = "human")
    self.count += 1
    @name = name
    @species = species  
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def count
    @@all.size
  end
end