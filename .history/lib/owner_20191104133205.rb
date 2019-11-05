require 'pry'
require 'cat.rb'
class Owner
  attr_reader :name, :species
  def initialize(name, species = "human")
    @name = name
    @species = species
  end

  def say_species
    return "I am a #{species}."
  end

  def self.all
    self.name.all
  end
end