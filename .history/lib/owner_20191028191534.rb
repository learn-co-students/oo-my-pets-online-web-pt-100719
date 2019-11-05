require 'pry'
class Owner
  attr_reader :name, :species
  @@all = []
  def initialize(name, species = "human")
    @name = name
    @species = species  
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.cats
    self.all
  end

  binding.pry

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