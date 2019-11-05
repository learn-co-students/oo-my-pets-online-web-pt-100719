class Owner
  attr_reader :name, :species
  @@all = []
  count = 0
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
    count += 1
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end
end