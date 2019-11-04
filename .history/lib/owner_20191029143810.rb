require 'pry'
class Owner
  attr_reader :name, :species, :pets
  @ownee = []
  

  def initialize(name, species = "human", pets = {:fishes => [], :cats => [], :dogs=> []})
    @name = name
    @species = species  
    @pets = pets
    @owner << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end
end