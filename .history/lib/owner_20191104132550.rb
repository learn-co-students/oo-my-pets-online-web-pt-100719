require 'pry'
require 'cat.rb'
class Owner
  attr_accessor :pets, :cats, :fishes, :dogs
  attr_reader :name, :species
  @@owner = []
  @@pets = {:fishes => [], :cats => [], :dogs=> []}

  

  def initialize(name, species = "human")
    @name = name
    @species = species  
    @@owner << self
    @@pets << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@owner
  end


  def buy_cat(name, owner)
    name = Cat.new(name)
    name.owner = owner
    @pets[:cats] << name 
  end 
	

  def self.count
    @@owner.length
  end

  def self.reset_all
    @@owner.clear
  end
end