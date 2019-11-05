require 'pry'
class Owner
  attr_reader :name, :species, :pets
  @@owner = []
  

  def initialize(name, species = "human")
    @name = name
    @species = species  
    @@owner << self
    @pets = {:fishes => [], :cats => [], :dogs=> []}
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