require 'pry'
require 'cat.rb'
class Owner
  attr_accessor :pets, :cats, :fishes, :dogs
  attr_reader :name, :species
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
    name = Cat.new(name)
    @pets[:cats] << name 
  end 
	

  def self.count
    @@owner.length
  end

  def self.reset_all
    @@owner.clear
  end
end