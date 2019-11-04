require 'pry'
class Owner
  attr_reader :name, :species, :pets
  @@owner = []
  

  def initialize(name, species = "human", pets = {:fishes => [], :cats => [], :dogs=> []})
    @name = name
    @species = species  
    @pets = pets
    @@owner << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@owner
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def self.count
    @@owner.length
  end

  def self.reset_all
    @@owner.clear
  end
end